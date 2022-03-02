import torch
from torchvision import datasets
from tqdm import tqdm

from PIL import ImageOps
import argparse
import random
import pickle

def main():
    parser = argparse.ArgumentParser(description="generate road image")
    parser.add_argument('integers', metavar='N', type=int, nargs='+',
                    help='mask class list')
    parser.add_argument('--indexs', type=int, nargs='*')
    parser.add_argument("--augment", action="store_true", default=False,
                        help="enable data augmentation")
    parser.add_argument("--img-num", type=int, default=3000, metavar="N",
                        help="number of image (default: 3000)")
    parser.add_argument("--pkl-name", type=str, default='dataset/mnist.pkl', metavar=None,
                        help="pkl file name (default: dataset/mnist.pkl)")
    args = parser.parse_args()


    train_num = args.img_num * 8 // 10
    test_num  = args.img_num * 2 // 10

    train_data = datasets.MNIST(root='./dataset', train=True, download=True)
    test_data = datasets.MNIST(root='./dataset', train=False, download=True)

    indexs = args.indexs if bool(args.indexs) else args.integers
    index_table = {}
    for i, n in zip(indexs, args.integers):
        index_table[n] = i

    def mask(x, labels):
        ret = x==labels[0]
        for l in labels:
            ret = torch.logical_or(ret, x==l)
        return ret

    def preproc(img):
        img = img.point(lambda x: 0 if x < 128 else 255) 
        img = ImageOps.invert(img)
        img = img.resize((32, 32))
        return img

    def augment(img):
        w, h = img.size
        d = min(w,h) // 8
        diff = random.randint(-d, d)
        angle = random.randint(-15, 15)
        trans = (random.randint(-d, d),random.randint(-d, d))
        img = img.crop((diff, diff, w-diff, h-diff))
        img = img.resize((w, h))
        img = img.rotate(angle, translate=trans)
        return img
    
    mask_list = args.integers
    train_data.data    = train_data.data   [mask(train_data.targets, mask_list)]
    train_data.targets = train_data.targets[mask(train_data.targets, mask_list)]

    train_data.data = train_data.data[0:train_num]
    train_data.targets = train_data.targets[0:train_num]


    test_data.data    = test_data.data   [mask(test_data.targets, mask_list)]
    test_data.targets = test_data.targets[mask(test_data.targets, mask_list)]

    test_data.data = test_data.data[0:test_num]
    test_data.targets = test_data.targets[0:test_num]

    random.seed(0)
    images = []
    labels = []
    for img, label in tqdm(train_data):
        if args.augment is True:
            aug = augment(img)
            aug = preproc(aug)
            images.append(aug)
            labels.append(index_table[label])
        img = preproc(img)
        images.append(img)
        labels.append(index_table[label])
        

    for img, label in tqdm(test_data):
        if args.augment is True:
            aug = augment(img)
            aug = preproc(aug)
            images.append(aug)
            labels.append(index_table[label])
        img = preproc(img)
        images.append(img)
        labels.append(index_table[label])

    dataset = {}
    dataset['data'] = images
    dataset['label'] = labels
    with open(args.pkl_name, mode='wb') as f:
        pickle.dump(dataset, f)
    
    
    # for i in mask_list:
    #     os.makedirs(rootdir+'/'+str(i), exist_ok=True)

    # f = open(rootdir + '/' + args.csv_name, 'a')

    # number = 0
    # for img, label in tqdm(train_data):
    #     savepath = rootdir + '/' + str(label) + '/0' + str(number).zfill(5) + ".png"
    #     img = preproc(img)
    #     img.save(savepath)
    #     f.write(str(label) + '/0' + str(number).zfill(5) + ".png" + ',' + str(label) + '\n')
    #     number = number + 1

    # number = 0
    # for img, label in tqdm(test_data):
    #     savepath = rootdir + '/' + str(label) + '/1' + str(number).zfill(5) + ".png"
    #     img = preproc(img)
    #     img.save(savepath)
    #     f.write(str(label) + '/1' + str(number).zfill(5) + ".png" + ',' + str(label) + '\n')
    #     number = number + 1

    # f.close()

if __name__ == "__main__":
    main()
