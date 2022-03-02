import cv2
import os
import argparse
import pickle

from PIL import Image, ImageOps

def crop_center(img, crop_width, crop_height):
    img_width, img_height, _ = img.shape
    return img[(img_width - crop_width)//2 : (img_width + crop_width)//2, (img_height - crop_height)//2 : (img_height + crop_height) // 2, :]

def crop_square(img):
    h, w, c = img.shape
    return crop_center(img, min(h,w), min(h,w))

def cv2pil(image):
    new_image = image.copy()
    if new_image.ndim == 2:
        pass
    elif new_image.shape[2] == 3:
        new_image = cv2.cvtColor(new_image, cv2.COLOR_BGR2RGB)
    elif new_image.shape[2] == 4:
        new_image = cv2.cvtColor(new_image, cv2.COLOR_BGRA2RGBA)
    new_image = Image.fromarray(new_image)
    return new_image

def save_all_frames(video_path, dsize=(64,64)):
    cap = cv2.VideoCapture(video_path)

    if not cap.isOpened():
        return
    n = 0
    frames = []

    while True:
        ret, frame = cap.read()

        if ret:
            frame = crop_square(frame)
            frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            frame = cv2.resize(frame, dsize=dsize)
            frame = cv2pil(frame)
            frames.append(frame)
            frames.append(ImageOps.flip(frame))
            frames.append(ImageOps.mirror(frame))
            frames.append(ImageOps.flip(ImageOps.mirror(frame)))
            n+=1
        else:
            return frames
    

def main():
    parser = argparse.ArgumentParser(description="ROAD DATASET CREATION")
    parser.add_argument("--img-size", type=int, default=32, metavar="N",
                        help="image size (default: 32x32)")
    parser.add_argument("--dir-path", type=str, default='../movie', metavar=None)
    parser.add_argument("--pkl-name", type=str, default='../dataset/movie.pkl', metavar=None,
                        help="pkl file name (default: dataset/movie.pkl)")
    args = parser.parse_args()

    base_dir = args.dir_path
    img_size = args.img_size

    files = os.listdir(path=args.dir_path)
    dirs = [f for f in files if os.path.isdir(os.path.join(args.dir_path, f))]

    images = []
    labels = []
    for d in dirs:
        sub_dir_path = base_dir+'/'+d
        movies = os.listdir(path=sub_dir_path)
        for m in movies:
            movie_path = sub_dir_path + '/' + m
            print('Convert '+movie_path)
            image = save_all_frames(movie_path, (img_size, img_size))
            label = [int(d)] * len(image)
            images += image
            labels += label





    # images, labels = generate_image(args.img_size, args.img_size, 4, 4, 5, 75, args.img_num, 2)
    dataset = {}
    dataset['data'] = images
    dataset['label'] = labels
    with open(args.pkl_name, mode='wb') as f:
        pickle.dump(dataset, f)


if __name__ == "__main__":
    main()