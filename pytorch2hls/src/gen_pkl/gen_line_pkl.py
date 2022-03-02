import argparse
import os
import cv2
import numpy as np
import warnings
import random
import math
import pickle
from PIL import Image

def scala_to_npcoord(W, H, x):
    if(x < 0):
        return np.array([0,0])
    elif(x < W):
        return np.array([x, 0])
    elif(x < (W+H)):
        return np.array([W, x-W])
    elif(x < (2*W+H)):
        return np.array([(2*W+H)-x, W])
    elif(x < (2*W+2*H)):
        return np.array([0, (2*W+2*H)-x])
    return np.array([0,0])

def is_included_ellipse(p, center, axis):
    return np.sum((p-center)**2/axis**2) <= 1

def gen_X_road_img(image, begin, end ,color, line_width):
    k = random.uniform(0.15, 0.85)
    v = (int((begin[0] - end[0]) * k), int(((begin[1] - end[1]) * k)))
    X_point = (end[0] + v[0], end[1] + v[1])
    normal_v = (v[1], -v[0])
    G = 1000
    ''' 0 = +, 1 = T, 2 = |-, 3 = -|'''
    t = random.randint(0, 3)
    if t == 0:
        n_begin = (X_point[0] + G*normal_v[0], X_point[1] + G*normal_v[1])
        n_end   = (X_point[0] - G*normal_v[0], X_point[1] - G*normal_v[1])
    elif t == 1:
        begin   = X_point
        n_begin = (X_point[0] + G*normal_v[0], X_point[1] + G*normal_v[1])
        n_end   = (X_point[0] - G*normal_v[0], X_point[1] - G*normal_v[1])
    elif t == 2:
        n_begin = (X_point[0] + G*normal_v[0], X_point[1] + G*normal_v[1])
        n_end   = (X_point[0]                , X_point[1]                )
    elif t == 3:
        n_begin = (X_point[0]                , X_point[1]                )
        n_end   = (X_point[0] - G*normal_v[0], X_point[1] - G*normal_v[1])
    else:
        pass
    image = cv2.line(image,   begin,   end ,color, line_width)
    image = cv2.line(image, n_begin, n_end ,color, line_width)
    return image

def gen_T_road_img(image, begin, end ,color, line_width):
    k = random.uniform(0.15, 0.85)
    v = (int((begin[0] - end[0]) * k), int(((begin[1] - end[1]) * k)))
    T_point = (end[0] + v[0], end[1] + v[1])
    image = cv2.line(image, T_point, end ,color, line_width)
    normal_v = (v[1], -v[0])
    G = 1000
    n_begin = (T_point[0] + G*normal_v[0], T_point[1] + G*normal_v[1])
    n_end   = (T_point[0] - G*normal_v[0], T_point[1] - G*normal_v[1])
    image = cv2.line(image, n_begin, n_end ,color, line_width)
    return image

def gen_lane_img(image, begin, end, color, line_width):
    center_begin, center_end = np.array([begin[0], begin[1]]), np.array([end[0], end[1]])

    e = (center_end-center_begin) / np.linalg.norm((center_end-center_begin))
    normal_e = np.array([e[1], -e[0]])
    if normal_e[1] > 0:
        normal_e = -1 * normal_e
    
    lane_width = line_width * 10
    left_begin,  left_end  = center_begin + normal_e * lane_width, center_end + normal_e * lane_width
    left_begin,  left_end  = left_begin - e*100, left_end + e*100
    right_begin, right_end = center_begin - normal_e * lane_width, center_end - normal_e * lane_width
    right_begin, right_end = right_begin - e*100, right_end + e*100

    image = cv2.line(image, (int(center_begin[0]), int(center_begin[1])), (int(center_end[0]), int(center_end[1])), color, line_width)
    image = cv2.line(image, (int(left_begin[0]), int(left_begin[1])), (int(left_end[0]), int(left_end[1])), color, line_width)
    image = cv2.line(image, (int(right_begin[0]), int(right_begin[1])), (int(right_end[0]), int(right_end[1])), color, line_width)
    # '''draw center lane'''
    # lane_len, lane_interval = line_width * 2.0, line_width * 3.0
    # while(center_begin[1] < center_end[1]):
    #     t = center_begin + lane_len * e
    #     image = cv2.line(image, (int(center_begin[0]), int(center_begin[1])), (int(t[0]), int(t[1])), color, line_width)
    #     center_begin = t + lane_interval * e
    #     lane_len, lane_interval = lane_len * 2.0, lane_interval * 2.0

    # dot_len      = line_width
    # dot_interval = line_width * 3
    # '''draw left dot lane'''
    # while(left_begin[1] < left_end[1]):
    #     t = left_begin + dot_len * e
    #     image = cv2.line(image, (int(left_begin[0]), int(left_begin[1])), (int(t[0]), int(t[1])), color, line_width)
    #     left_begin = t + dot_interval * e

    # '''draw right dot lane'''
    # while(right_begin[1] < right_end[1]):
    #     t = right_begin + dot_len * e
    #     image = cv2.line(image, (int(right_begin[0]), int(right_begin[1])), (int(t[0]), int(t[1])), color, line_width)
    #     right_begin = t + dot_interval * e

    
    return image

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

def generate_image(W, H, dW, dH, L, theta, img_num, line_width):
    random.seed(0)
    #generated = [0, 0, 0, 0, 0, 0]
    generated = [0, 0, 0]
    center = np.array([W/2, H/2])
    axis_e = np.array([W/2-dW, H/2-dH])
    axis_i = np.array([L, L])

    images = []
    labels = []
    while(min(generated) < img_num):
        a, b = random.uniform(0, 2*W+2*H), random.uniform(0, 2*W+2*H)
        a, b = scala_to_npcoord(W, H, a), scala_to_npcoord(W, H, b)
        c = (a+b)/2
        if not is_included_ellipse(c, center, axis_e):
            continue
        if(a[1] > b[1]):
            a,b = b,a
        v = (a-b)
        angle = math.degrees(math.atan(v[0]/v[1]))


        if(abs(angle) > theta):
            continue
        #straight
        if is_included_ellipse(c, center, axis_i):
            label = 0
        #left
        elif(c[0] < W/2):
            label = 2
        #right
        else:
            label = 1
        
        image = np.zeros((H,W), dtype=np.uint8)
        image.fill(255)
        
        begin = (int(a[0]), int(a[1]))
        end   = (int(b[0]), int(b[1]))

        
        #if(angle < 15 and np.random.randint(0, 10) > 5):
        if False:
            #image = gen_T_road_img(image, begin, end ,0, line_width)
            image = gen_X_road_img(image, begin, end ,0, line_width)
            #label += 3
        else:
            image = cv2.line(image, begin, end, 0, line_width)
            #image = gen_lane_img(image, begin, end, 0, line_width)
        if generated[label] > img_num:
            continue
        image = cv2pil(image)
        images.append(image)
        labels.append(label)
        generated[label] += 1
    return images, labels




def main():
    warnings.simplefilter('ignore')
    parser = argparse.ArgumentParser(description="ROAD DATASET CREATION")
    parser.add_argument("--img-size", type=int, default=32, metavar="N",
                        help="image size (default: 32x32)")
    parser.add_argument("--img-num", type=int, default=3000, metavar="N",
                        help="number of image (default: 3000)")
    parser.add_argument("--pkl-name", type=str, default='dataset/road.pkl', metavar=None,
                        help="pkl file name (default: dataset/road.pkl)")
    args = parser.parse_args()

    images, labels = generate_image(args.img_size, args.img_size, 2, 2, 4, 65, args.img_num, 4)#, args.output_dir+'/', args.csv_name)
    dataset = {}
    dataset['data'] = images
    dataset['label'] = labels
    with open(args.pkl_name, mode='wb') as f:
        pickle.dump(dataset, f)


if __name__ == "__main__":
    main()