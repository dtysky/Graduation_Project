__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image

def transform(im):
	data_src = im.getdata()
	data_res = []
	for rgb in data_src:
		gray = int(rgb[0]/4.0 + rgb[0]/32.0 + rgb[1]/2.0 + rgb[1]/16.0 + rgb[2]/8.0)
		data_res.append(gray)
	return data_res