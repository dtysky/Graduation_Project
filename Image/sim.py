__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image
import os

FileAll = []

for root,dirs,files in os.walk('./RGB'):
    for f in files:
        if os.path.splitext(f)[1]=='.jpg':
        	FileAll.append((root+'/',f))

def transform(im):
	return im.convert('L')

for root,f in FileAll:
	im_src = Image.open(root+f)
	transform(im_src).save((root + f).replace('RGB', 'Gray'))