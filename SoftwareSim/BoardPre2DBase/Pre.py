#coding = utf-8

__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image
import os,re
import Trans

GridWidth = 13
GridHeight = 13
Width = 640
Height = 480

th_white = 155

FileAll = []

for root,dirs,files in os.walk('./Image'):
    for f in files:
        if os.path.splitext(f)[1]=='.jpg' and not re.findall(r'gary|black|white',f):
        	FileAll.append((root+'/',f))

def pre(im):
	now_row = 0
	now_col = 0
	left = Width
	right = 0
	top = Height
	bottom = 0
	for pix in im:
		if pix == 1:
			if left > now_col:
				left = now_col
			if right < now_col:
				right = now_col
			if top > now_row:
				top = now_row
			if bottom < now_row:
				bottom = now_row

		if now_col == Width-1:
			now_col = 0
			if now_row == Height-1:
				now_row = 0
			else:
				now_row += 1
		else:
			now_col += 1

	res = ''
	res += 'LeftTop = (' + str(left) + ',' + str(top) + ')\n'
	res += 'RightBottom = (' + str(right) + ',' + str(bottom) + ')'
	return res


for root,f in FileAll:
	im = Trans.transform(root,f,th_white)
	im_white = im.getdata()
	fo = open(root+'res'+f+'.dat','w')
	fo.write(pre(im_white))
	fo.close()