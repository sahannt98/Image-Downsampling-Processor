import cv2 as cv
import numpy as np
file = open ('output.txt', 'r' )
lines =file.readlines()
Binary = []
imge = np.full((128,128), 0, dtype=np.uint8)

for i in range (len(lines )) :
    Binary.append(int((lines[i].strip())))

for raw in range(128):
    for colum in range(128):
        index = raw*128+colum
        imge[raw][colum] = Binary[index]

im_or = cv.imread("img.jpg")
cv.imwrite('128img.png', imge)
cv.imshow('Original', im_or)
cv.imshow('Downsample', imge)
cv.waitKey(0)
cv.destroyAllWindows()