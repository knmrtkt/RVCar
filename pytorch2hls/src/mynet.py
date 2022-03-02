import torch
import torch.nn as nn
import torch.nn.functional as F

import brevitas.nn as qnn
from brevitas.quant import Int8Bias as BiasQuant
from torch.nn.modules.activation import ReLU

class MyNet(nn.Module):
    def __init__(self, class_num, bias=True):
        super().__init__()
        # self.conv1 = nn.Conv2d(in_channels=1, out_channels=8, kernel_size=3)
        # self.relu1 = nn.ReLU(inplace=True)
        # self.conv2 = nn.Conv2d(in_channels=8, out_channels=16, kernel_size=3)
        # self.relu2 = nn.ReLU(inplace=True)
        # self.fc1 = nn.Linear(in_features=6*6*16, out_features=64)
        # self.relu3 = nn.ReLU(inplace=True)
        # self.fc2 = nn.Linear(in_features=64, out_features=10)

        # list = []
        # list.append(nn.Conv2d(in_channels=1, out_channels=8, kernel_size=3, padding=1))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # list.append(nn.Conv2d(in_channels=8, out_channels=16, kernel_size=3, padding=1))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # list.append(nn.Flatten())
        # list.append(nn.Linear(in_features=8*8*16, out_features=64))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Linear(in_features=64, out_features=10))
        # list.append(nn.LogSoftmax(dim=1))
        # self.layers = nn.ModuleList(list)

        '''Typical CNN'''
        list = []
        list.append(nn.Conv2d(in_channels=1, out_channels=8, kernel_size=3))
        list.append(nn.ReLU(inplace=True))
        list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        list.append(nn.Conv2d(in_channels=8, out_channels=16, kernel_size=3))
        list.append(nn.ReLU(inplace=True))
        list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        list.append(nn.Flatten())
        list.append(nn.Linear(in_features=6*6*16, out_features=64))
        list.append(nn.ReLU(inplace=True))
        list.append(nn.Linear(in_features=64, out_features=class_num))
        list.append(nn.LogSoftmax(dim=1))
        self.layers = nn.ModuleList(list)

        '''LeNet-5'''
        # list = []
        # list.append(nn.Conv2d(in_channels=1, out_channels=6, kernel_size=5))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # list.append(nn.Conv2d(in_channels=6, out_channels=16, kernel_size=5))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # list.append(nn.Flatten())
        # list.append(nn.Linear(in_features=5*5*16, out_features=120))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Linear(in_features=120, out_features=84))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Linear(in_features=84, out_features=10))
        # list.append(nn.LogSoftmax(dim=1))
        # self.layers = nn.ModuleList(list)

        '''VGG-6 for lego'''
        # list = []
        # list.append(nn.Conv2d(in_channels=1, out_channels=8, kernel_size=3)) #30, 30
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Conv2d(in_channels=8, out_channels=8, kernel_size=3)) # 28, 28
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2)) # 14, 14

        # list.append(nn.Conv2d(in_channels=8, out_channels=16, kernel_size=3)) #12, 12
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Conv2d(in_channels=16, out_channels=16, kernel_size=3)) # 10, 10
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2)) # 5, 5

        # list.append(nn.Flatten())
        # list.append(nn.Linear(in_features=5*5*16, out_features=32))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Linear(in_features=32, out_features=5))
        # list.append(nn.LogSoftmax(dim=1))
        # self.layers = nn.ModuleList(list)


        '''Tensor flow template'''
        # list = []
        # list.append(nn.Conv2d(in_channels=1, out_channels=32, kernel_size=3))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # list.append(nn.Conv2d(in_channels=32, out_channels=64, kernel_size=3))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # list.append(nn.Conv2d(in_channels=64, out_channels=16, kernel_size=3))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Flatten())
        # list.append(nn.Linear(in_features=4*4*16, out_features=64))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Linear(in_features=64, out_features=10))
        # list.append(nn.LogSoftmax(dim=1))
        # self.layers = nn.ModuleList(list)


        # list = []
        # list.append(qnn.QuantIdentity(bit_width=4, return_quant_tensor=True))
        # list.append(qnn.QuantConv2d(in_channels=1, out_channels=8, kernel_size=3, padding=1,weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True))
        # list.append(qnn.QuantReLU(inplace=True, bit_width=4, return_quant_tensor=True))
        # list.append(qnn.QuantMaxPool2d(kernel_size=2, stride=2))
        # list.append(qnn.QuantConv2d(in_channels=8, out_channels=16, kernel_size=3, padding=1, weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True))
        # list.append(qnn.QuantReLU(inplace=True, bit_width=4, return_quant_tensor=True))
        # list.append(qnn.QuantMaxPool2d(kernel_size=2, stride=2))
        # list.append(nn.Flatten())
        # list.append(qnn.QuantLinear(in_features=8*8*16, out_features=64, bias=True, weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True))
        # list.append(qnn.QuantReLU(inplace=True))
        # list.append(qnn.QuantLinear(in_features=64, out_features=10, bias=True, weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True))
        # self.layers = nn.ModuleList(list)


        # list = []
        # # 32, 32
        # list.append(nn.Conv2d(in_channels=1, out_channels=32, kernel_size=3, padding=1))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # # 16, 16
        # list.append(nn.Conv2d(in_channels=32, out_channels=64, kernel_size=3, padding=1))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # # 8, 8
        # list.append(nn.Conv2d(in_channels=64, out_channels=64, kernel_size=3, padding=1))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.MaxPool2d(kernel_size=2, stride=2))
        # # 4, 4

        # list.append(nn.Flatten())
        # list.append(nn.Linear(in_features=4*4*64, out_features=64))
        # list.append(nn.ReLU(inplace=True))
        # list.append(nn.Linear(in_features=64, out_features=10))
        # self.layers = nn.ModuleList(list)



    def forward(self, x):
        # x = self.conv1(x)
        # x = self.relu1(x)
        # x = F.max_pool2d(x, kernel_size=2, stride=2)
        # x = self.conv2(x)
        # x = self.relu2(x)
        # x = F.max_pool2d(x, kernel_size=2, stride=2)        
        # x = torch.flatten(x, 1)
        # x = self.fc1(x)
        # x = self.relu3(x)
        # x = self.fc2(x)
        # x = F.log_softmax(x, dim=1)
        # return x
        for layer in self.layers:
            x = layer(x)
        return x
        # output = F.log_softmax(x, dim=1)
        # return output


# class MyNet(nn.Module):
#     def __init__(self):
#         super(MyNet, self).__init__()
#         self.quant_inp = qnn.QuantIdentity(bit_width=4, return_quant_tensor=True)
#         self.conv1 = qnn.QuantConv2d(1, 8, 3, weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True)
#         self.relu1 = qnn.QuantReLU(bit_width=4, return_quant_tensor=True)
#         self.conv2 = qnn.QuantConv2d(8, 16, 3, weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True)
#         self.relu2 = qnn.QuantReLU(bit_width=4, return_quant_tensor=True)
#         self.fc1   = qnn.QuantLinear(16*6*6, 64, bias=True, weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True)
#         self.relu3 = qnn.QuantReLU(bit_width=4, return_quant_tensor=True)
#         self.fc2   = qnn.QuantLinear(64, 10, bias=True, weight_bit_width=3, bias_quant=BiasQuant, return_quant_tensor=True)

#     def forward(self, x):
#         out = self.quant_inp(x)
#         out = self.relu1(self.conv1(out))
#         out = F.max_pool2d(out, 2)
#         out = self.relu2(self.conv2(out))
#         out = F.max_pool2d(out, 2)
#         out = out.reshape(out.shape[0], -1)
#         out = self.relu3(self.fc1(out))
#         out = self.fc2(out)
#         out = F.log_softmax(out, dim=1)
#         return out