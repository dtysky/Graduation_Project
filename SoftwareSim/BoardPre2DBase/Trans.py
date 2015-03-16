__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image
import os,re
import RGB2GARY,GARY2BIN

def transform(root,f,th_white):
	im_src = Image.open(root+f)
	s_x, s_y = im_src.size
	im_gary = Image.new('L', (s_x, s_y), 0)
	im_gary.putdata(RGB2GARY.transform(im_src))
	im_white = Image.new('1', (s_x, s_y), 0)
	im_white.putdata(GARY2BIN.transform(im_gary,th_white))
	im_gary.save(root + 'gary' + f)
	im_white.save(root + 'white' + f.split('.')[0] + '.bmp')
	return im_white