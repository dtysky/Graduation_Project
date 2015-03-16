__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image

def transform(im,th):
	data_src = im.getdata()
	data_res = []
	for gray in data_src:
		data_res.append(0 if gray<th else 1)
	return data_res