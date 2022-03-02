
import argparse
from enum import Flag
from scipy.sparse import data
from torchvision import datasets, transforms
import warnings
import pickle
from PIL import Image
import pandas as pd
import numpy as np

from sklearn.model_selection import train_test_split

import pdb
import torch
from mydataset import MyDataset

import pickle
import argparse
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.utils.data import DataLoader
from torch.optim.lr_scheduler import StepLR
import warnings

from mynet import MyNet

import math
import os
import onnx
from torchvision.utils import save_image

import time
import torch
import torch.nn as nn
import torch.nn.functional as F
from sklearn.metrics import confusion_matrix

class Timer:
    def __init__(self):
        self.start = None
        self.end = None
        self.interval = None
        
    def __enter__(self):
        self.start = time.perf_counter()
        return self
    
    def __exit__(self, *args):
        self.end = time.perf_counter()
        self.interval = self.end - self.start

def train(model, device, train_dataloader, optimizer, epoch, log_interval=50, dry_run=False):
    model.train()
    criterion = nn.CrossEntropyLoss()
    
    for batch_idx, (data, labels) in enumerate(train_dataloader):
        batch_count = batch_idx + 1
        data, labels = data.to(device), labels.to(device)

        optimizer.zero_grad()
        
        # forward + backward + optimize
        outputs = model(data)
        loss = F.nll_loss(outputs, labels)
        #loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()

        # print statistics
        if (batch_count % log_interval == 0) or (batch_count == len(train_dataloader)):
            if (batch_count != len(train_dataloader)):
                print("Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}".format(
                    epoch, batch_count * len(data), len(train_dataloader.dataset),
                    100. * batch_count / len(train_dataloader), loss.item()))
                if dry_run:
                    break
            else:
                print("Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}".format(
                    epoch, len(train_dataloader.dataset), len(train_dataloader.dataset),
                    100. * batch_count / len(train_dataloader), loss.item()))
                if dry_run:
                    break


def test(model, device, test_dataloader):
    model.eval()
    criterion = nn.CrossEntropyLoss()
    
    test_loss = 0
    correct = 0

    preds = []
    trues = []
    
    with torch.no_grad():
        for data, labels in test_dataloader:
            data, labels = data.to(device), labels.to(device)
            outputs = model(data)
            test_loss += F.nll_loss(outputs, labels, reduction="sum").item()  # sum up batch loss
            pred = outputs.argmax(dim=1, keepdim=True)  # get the index of the max log-probability
            correct += pred.eq(labels.view_as(pred)).sum().item()
            preds += pred
            trues += labels

    test_loss /= len(test_dataloader.dataset)

    print("Test set: Average loss: {:.4f}, Accuracy: {}/{} ({:.2f}%)\n".format(
        test_loss, correct, len(test_dataloader.dataset),
        100. * correct / len(test_dataloader.dataset)))

    #return confusion_matrix(trues, preds)


def quantize_torch_tensor(float_tensor, bits):
    def quantization(x, s, z, alpha_q, beta_q):
        x_q = torch.round(1 / s * x + z)
        x_q = torch.clip(x_q, min=alpha_q, max=beta_q)
        return x_q

    def quantization_int8(x, s, z, b=8):
        x_q = quantization(x, s, z, alpha_q=-2**(b-1), beta_q=2**(b-1)-1)
        return x_q

    def dequantization(x_q, s, z):
        x = s * (x_q - z)
        return x

    def generate_quantization_constants(alpha, beta, alpha_q, beta_q):
        s = (beta - alpha) / (beta_q - alpha_q)
        z = int((beta * alpha_q - alpha * beta_q) / (beta - alpha))
        return s, z

    def generate_quantization_int_constants(alpha, beta, b=8):
        alpha_q = -2 ** (b-1)
        beta_q = 2 ** (b-1) - 1
        s, z = generate_quantization_constants(alpha=alpha, beta=beta, alpha_q=alpha_q, beta_q=beta_q)
        return s, z

    alpha, beta = torch.min(float_tensor), torch.max(float_tensor)
    if alpha == beta:
        return float_tensor
    else:
        s, z = generate_quantization_int_constants(alpha, beta, b=bits)
        int_tensor = quantization_int8(float_tensor, s, z, b=bits)
        return dequantization(int_tensor, s, z)

def fold_BN_param(model_dict):
    for layer in model_dict.keys():
        if 'running_var' in layer:
            w_str = layer.rsplit('.', 1)[0] + '.weight'
            b_str = layer.rsplit('.', 1)[0] + '.bias'
            m_str = layer.rsplit('.', 1)[0] + '.running_mean'
            v_str = layer.rsplit('.', 1)[0] + '.running_var'
            w, b, m, v = model_dict[w_str], model_dict[b_str], model_dict[m_str], model_dict[v_str]
            model_dict[w_str] = w/torch.sqrt(v+1e-5)
            model_dict[b_str] = b - m/torch.sqrt(v+1e-5)
            model_dict[m_str] = torch.zeros(model_dict[m_str].shape)
            model_dict[v_str] = torch.ones(model_dict[v_str].shape)

def load_dataset_pkl(pkls, height, width, test_rate=0.2):
    images = []
    labels = []

    for pkl in pkls:
        with open(pkl, mode='rb') as f:
            dataset = pickle.load(f)
            images += dataset['data']
            labels += dataset['label']
    
    class_num = np.unique(labels).size

    train_X, test_X, train_y, test_y = \
        train_test_split(images, labels, \
        test_size=test_rate, random_state=0, stratify=labels)

    train_data = MyDataset(train_X, train_y, height, width)
    test_data  = MyDataset(test_X,  test_y,  height, width)

    return train_data, test_data, class_num

def trainer(train_data, test_data, class_num, batch_size, epochs, use_cuda=False, seed=42, gpu_num=1, lr=1.0, gamma=0.7):
    torch.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)
    torch.backends.cudnn.deterministic = True

    device = torch.device("cuda" if use_cuda else "cpu")
    device_info = "Device: Use CPU"
    if use_cuda:
        n_gpus = min(torch.cuda.device_count(), gpu_num)
        n_gpus = max(gpu_num, 1)
        if n_gpus > 1:
            device_info = "Device: Use " + str(n_gpus) + " GPUs"
        else:
            device_info = "Device: Use a single GPU"
    print("*********", device_info, "*********\n")

    train_kwargs = {"batch_size": batch_size}
    test_kwargs = {"batch_size": batch_size}
    if use_cuda:
        cuda_kwargs = {"num_workers": 1,
                       "pin_memory": True,
                       "shuffle": True}
        train_kwargs.update(cuda_kwargs)
        test_kwargs.update(cuda_kwargs)

    train_dataloader = DataLoader(train_data, **train_kwargs)
    test_dataloader  = DataLoader(test_data, **test_kwargs)

    model = MyNet(class_num)
    if use_cuda and (n_gpus > 1):
        gpu_ids = [*range(n_gpus)]
        model = nn.DataParallel(model, device_ids=gpu_ids)
    model.to(device)
    
    optimizer = optim.Adadelta(model.parameters(), lr=lr)
    scheduler = StepLR(optimizer, step_size=1, gamma=gamma)

    with Timer() as t:
        for epoch in range(1, epochs + 1):
            train(model, device, train_dataloader, optimizer, epoch)
            test(model, device, test_dataloader)
            scheduler.step()
    
    
    model.to('cpu')

    return model

def model_to_hls(model, frac_bits, int_bits, dummy_input, kernel_name, debug=False, use_float=False, use_stream=False, use_convolver=False):

    def model_to_list(onnx_model):
        layer_list = []
        for node in onnx_model.graph.node:
            # if node.op_type == 'Flatten':
            #    continue
            layer = {}
            layer['op'] = node.op_type
            layer['input'] = []
            #layer['param_name'] = 'none'
            layer['param_name'] = []
            for input in node.input:
                layer['input'].append(str(input))
                if 'weight' in input or 'bias' in input:
                    #layer['param_name'] = input.split('.')[0]
                    layer['param_name'].append(input)
            layer['output'] = []
            for output in node.output:
                layer['output'].append(str(output))
            for atr in node.attribute:
                if atr.name == "kernel_shape":
                    layer['kernel_size'] = int(atr.ints[0])
                elif atr.name == "pads":
                    layer['padding'] = int(atr.ints[0])
                elif atr.name == "strides":
                    layer['stride'] = int(atr.ints[0])
            layer_list.append(layer)

        for input in onnx_model.graph.input:
            layer_list[0]['B'] = input.type.tensor_type.shape.dim[0].dim_value
            layer_list[0]['IC'] = input.type.tensor_type.shape.dim[1].dim_value
            layer_list[0]['IH'] = input.type.tensor_type.shape.dim[2].dim_value
            layer_list[0]['IW'] = input.type.tensor_type.shape.dim[3].dim_value

        # get each layer channels
        for layer in layer_list:
            layer['dims'] = []
            for param_name in layer['input']:
                for initializer in onnx_model.graph.initializer:
                    if param_name == initializer.name and 'weight' in param_name:
                        for dim in initializer.dims:
                            layer['dims'].append(dim)
                            #numpy_helper.to_array( onnx_model.graph.initializer[5])

        # set each layer input/output size
        for i ,layer in enumerate(layer_list):
            #pdb.set_trace()
            if i == 0:
                pass
                #layer['in_width'] = (int_bits+frac_bits, int_bits)
            else:
                prev = layer_list[i-1]
                layer['IC'] = prev['OC']
                layer['IH'] = prev['OH']
                layer['IW'] = prev['OW']
                #layer['in_width'] = prev['out_width']
            
            #layer['out_width'] = layer['in_width']
            if layer['op'] == 'Conv':
                layer['OC'] = layer['dims'][0]
                layer['OH'] = (layer['IH']+2*layer['padding']-layer['kernel_size'])//layer['stride'] + 1
                layer['OW'] = (layer['IW']+2*layer['padding']-layer['kernel_size'])//layer['stride'] + 1
                #layer['out_width'] = (layer['in_width'][0]+int(math.log2(layer['IC'])),layer['in_width'][1]+int(math.log2(layer['IC'])))
            elif 'Pool' in layer['op']:
                layer['OC'] = layer['IC'] 
                layer['OH'] = layer['IH'] // layer['kernel_size']
                layer['OW'] = layer['IW'] // layer['kernel_size']
            elif 'Flatten' == layer['op']:
                layer['OC'] = 1
                layer['OH'] = 1
                layer['OW'] = layer['IH'] * layer['IC'] * layer['IW']
                #layer['out_width'] = (layer['in_width'][0]+int(math.log2(layer['IW'])),layer['in_width'][1]+int(math.log2(layer['IW'])))
            elif 'Gemm' == layer['op']:
                layer['IW'] = layer['IC'] * layer['IH'] * layer['IW']
                layer['OW'] = layer['dims'][0]# * layer['IC'] * layer['IH']
                layer['IC'] = 1
                layer['IH'] = 1
                layer['OC'] = 1
                layer['OH'] = 1
                
            elif 'Softmax' in layer['op']:
                layer['OC'] = layer['IC']
                layer['OH'] = layer['IH']
                layer['OW'] = 1
            else:
                layer['OC'] = layer['IC']
                layer['OH'] = layer['IH']
                layer['OW'] = layer['IW']
        
        return layer_list

    def tensor_to_cpp_array_kernel(weight):
        if weight.shape == torch.Size([]):
            return str(float(weight)) + ','
        else:
            ret = ""
            for param in weight:
                ret = ret + tensor_to_cpp_array_kernel(param)
            return ret

    def tensor_to_cpp_array(weight):
        ret = tensor_to_cpp_array_kernel(weight)
        ret = "{" + ret.rstrip(',') + "};\n"
        return ret

    def ap_fixed(width):
        nonlocal use_float
        if use_float:
            return 'float'
        else:
            return 'ap_fixed<' + str(width[0]) + ',' + str(width[1]) + ',AP_TRN_ZERO,AP_SAT>'

    def get_tensor_bits(tensor):
        alpha, beta = torch.min(tensor), torch.max(tensor)
        if math.isnan(alpha) or math.isnan(beta):
            return 1
        else:
            '''need sign bit'''
            return int(math.log2(int(max(abs(alpha), abs(beta)))+1)) + 1

    line = ''
    for name in model.state_dict():
        param_int_bits = get_tensor_bits(model.state_dict()[name])
        line += 'typedef const '+ ap_fixed((frac_bits, param_int_bits)) + ' ' + name.replace('.', '_') + '_type;\n'
        line += name.replace('.', '_') + '_type '
        line += name.replace('.', '_') + '[] = ' + str(tensor_to_cpp_array(model.state_dict()[name]))
    weight = line

    torch.onnx.export(model, dummy_input, 'tmp.onnx', verbose=True)
    onnx_model = onnx.load('tmp.onnx')
    os.remove('tmp.onnx')

    layer_list = model_to_list(onnx_model)

    # put function call
    in_size  = layer_list[0]['IH'] * layer_list[0]['IW']
    out_size = layer_list[-1]['IC'] * layer_list[-1]['IH'] * layer_list[-1]['IW']
    data_width = (int_bits+frac_bits, int_bits)
    in_type = ap_fixed(data_width)
    in_no  = 0
    out_no = 0

    line  = '#include <ap_fixed.h>\n'
    line += '#include <ap_int.h>\n'
    line += '#include "layer.h"\n'
    line += '#include "weight.h"\n'
    if use_convolver:
        line += '#define Conv Convolver\n'
        line += '#define MaxPool MaxPooler\n'

    line += 'void ' + kernel_name + '(ap_uint<8*' + str(layer_list[0]['IC']) + '> t_in_img_V[' + str(in_size) + '],'
    line += 'int *predict_num){\n\t'
    if use_stream:
        line += '#pragma HLS DATAFLOW\n\t'

    if use_stream:
        line += 'hls::stream<' + in_type + '> out0;\n\t'
    else:
        line += in_type + ' out0[' + str(in_size) + '];\n\t'

    line += 'for(int i=0; i<' + str(in_size) + '; i++){\n\t\t'
    line += 'for(int c=0; c<' + str(layer_list[0]['IC']) + '; c++){\n\t\t\t'

    if use_stream:
        line += 'out0.write('
    else:
        line += 'out0[i*' + str(layer_list[0]['IC']) + ' + c] = '
    
    if use_float:
        line += '(float)(t_in_img_V[i].range(8*(c+1)-1, 8*c)) /255.0'
    else:
        line += '(ap_fixed<17, 9>)(t_in_img_V[i].range(8*(c+1)-1, 8*c)) >> 8'
    if use_stream:
        line += ')'
    line += ';\n\t\t}\n\t}\n\n\t'
    
    for i, layer in enumerate(layer_list):
        if 'param_name' in layer:
            out_type = ap_fixed(data_width)
        if 'Softmax' in layer['op']:
            out_type = 'int'
        else:
            # if layer['op'] == 'Conv':
            #     data_width = (data_width[0]+int(math.log(layer['OC'], 2)),data_width[1]+int(math.log(layer['OC'], 2)))
            #     #data_width = (data_width[0]+int(math.log2(layer['IC'])),data_width[1]+int(math.log2(layer['IC'])))
            # if layer['op'] == 'Gemm':
            #     data_width = (data_width[0]+int(math.log(layer['IW'], 2)),data_width[1]+int(math.log(layer['IW'], 2)))
            out_type = ap_fixed(data_width)
            
        #line = ''
        in_size  = layer['IC'] * layer['IH'] * layer['IW']
        out_size = layer['OC'] * layer['OH'] * layer['OW']
        in_no = out_no
        #if in_size != out_size:
        if use_stream:
            out_no += 1
            line += 'hls::stream<' + out_type + '> out' + str(out_no) + ';\n\t'
        else:
            if layer['op'] != 'Relu':
                out_no += 1
                line += out_type + ' out' + str(out_no) + '[' + str(out_size) + '];\n\t'
        
        #line += '#pragma HLS ARRAY_PARTITION variable=out' + str(out_no) + ' complete dim=0\n\t'

        line += layer['op'] + '<'
        line += in_type + ','
        line += out_type + ','
        in_type = out_type
        
        if 'param_name' in layer:
            for j, input in enumerate(layer['param_name']):
                line += input.replace('.', '_') + '_type' + ','
        
        line += str(layer['IC']) + ',' + str(layer['IH']) + ',' + str(layer['IW']) + ',' + str(layer['OC']) + ',' + str(layer['OH']) + ',' + str(layer['OW']) + ','
        line += str(layer['kernel_size']) + ',' if ('kernel_size' in layer) else ''
        line += str(layer['stride']) + ',' if ('stride' in layer) else ''
        line += str(layer['padding']) + ',' if ('padding' in layer) else ''

        line  = line.rstrip(',')+ '>'
        line += '(out' + str(in_no) +',' 
        line += 'out' + str(out_no)

        if 'param_name' in layer:
            for j, param in enumerate(layer['param_name']):
                line += ',' + param.replace('.', '_')
                if use_float:
                    line += '_float'
        line += ');\n\n\t'

        if debug:
            line += 'Debug_print<' + out_type + ',' 
            line += str(layer['OC']) + ',' + str(layer['OH']) + ',' + str(layer['OW']) + '>('
            line += 'out' + str(out_no) + ',' + '"' + layer['op'] + '");\n\t'

        if i == len(layer_list)-1:
            if use_stream:
                line += '*predict_num = out' + str(out_no) + '.read();\n}'
            else:
                line += '*predict_num = out' + str(out_no) + '[0];\n}'

    kernel = line
    
    return weight, kernel

def gen_hex_data(dataset, num, target_dir, csv_name):
    def tensor_to_hex(tensor):
        ret = ''
        for i in range(tensor.size()[1]):
            for j in range(tensor.size()[2]):
                for c in range(tensor.size()[0]):
                    ret += format((int(float(tensor[c][i][j])*255)), '02x')
                ret += '\n'
        return ret
    if target_dir[-1] != '/':
        target_dir += '/'
    csv = open(csv_name, 'w')
    os.makedirs(target_dir + 'hex', exist_ok=True)
    os.makedirs(target_dir + 'png', exist_ok=True)
    cur = os.getcwd()
    for i in range(num):
        data = dataset[i][0]
        path = cur + '/' + target_dir + 'hex/' + str(i) + '.hex'
        f = open(path, 'w')
        f.write(tensor_to_hex(data))
        f.close()
        csv.write(path + ',' + str(dataset[i][1]) + '\n')
        if(i < 100):
            path = cur + '/' + target_dir + 'png/' + str(i) + '.png'
            save_image(data, path)  
    csv.close()

def main():
    warnings.simplefilter('ignore')
    # Training settings
    parser = argparse.ArgumentParser(description="PyTorch MNIST Example")
    parser.add_argument('--pkls', metavar='S', type=str, nargs='*', help='image pkl files')
    parser.add_argument("--width", type=int, default=32, help="width of input image size (default: 32)")
    parser.add_argument("--height", type=int, default=32,help="height of input image size (default: 32)")
    parser.add_argument("--channel", type=int, default=1,help="channel of input image (default: 1)")
    parser.add_argument("--epochs", type=int, default=10, help="number of epochs to train (default: 10)")
    parser.add_argument("--batch-size", type=int, default=256, help="input batch size for training (default: 256)")
    parser.add_argument("--frac-bits", type=int, default=8, help="quantization bit size (default: 8)")
    parser.add_argument("--int-bits", type=int, default=8, help="quantization int bit size (default: 8)")
    parser.add_argument("--kernel-name", type=str, default='BinCNN', help="kernel name (default: BinCNN)")
    parser.add_argument("--use-float", action='store_true')
    parser.add_argument("--use-stream", action='store_true')
    parser.add_argument("--debug", action='store_true')
    parser.add_argument("--use-convolver", action='store_true')
    parser.add_argument("--weight-file-name", type=str, default='weight.h',help="output header file name (default: weight.h")
    parser.add_argument("--kernel-file-name", type=str, default='kernel.cpp',help="output kernel file name(default: kernel.cpp)")
    parser.add_argument("--hex-num", type=int, default=100, help="number of output hex data (default: 100)")
    parser.add_argument("--hex-outdir", type=str, default='sbox' ,help="output directory name (default: sbox)")
    parser.add_argument("--csv-file-name", type=str, default='sbox/test_image.csv', help="csv file name (default: test_image.csv)")

    args = parser.parse_args()
    train_data, test_data, class_num = load_dataset_pkl(args.pkls, args.height, args.width)

    model = trainer(train_data, test_data, class_num, args.batch_size, args.epochs)

    dummy_input = torch.randn(1, args.channel, args.height, args.width)
    weight, kernel = model_to_hls(model, args.frac_bits, args.int_bits, dummy_input, 
    args.kernel_name, debug=args.debug, use_float=args.use_float, use_stream=args.use_stream, use_convolver=args.use_convolver)

    f = open(args.weight_file_name, 'w')
    f.write(weight)
    f.close()

    f = open(args.kernel_file_name, 'w')
    f.write(kernel)
    f.close()

    os.makedirs(args.hex_outdir, exist_ok=True)
    
    if args.hex_num == -1:
        args.hex_num = len(test_data)
    gen_hex_data(test_data, args.hex_num, args.hex_outdir, args.csv_file_name)



if __name__ == "__main__":
    main()