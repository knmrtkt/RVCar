from torchvision import datasets, transforms
from PIL import Image

class MyDataset:
    def __init__(self, X, y, height, width, valid=False):
        self.X = X
        self.y = y
        self.height = height
        self.width  = width
        trans = [
                transforms.Resize((self.height, self.width)),
                transforms.ToTensor()
            ]
        self.trans = transforms.Compose(trans)

    def __len__(self):
        return len(self.X)

    def __getitem__(self, pos):
        X = self.trans(self.X[pos])
        y = self.y[pos]
        return X, y