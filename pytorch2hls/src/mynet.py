import torch
import torch.nn as nn

# pytorch2hls supports only nn.modules.
class MyNet(nn.Module):
    def __init__(self, class_num, bias=True):
        super().__init__()

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

    def forward(self, x):
        for layer in self.layers:
            x = layer(x)
        return x