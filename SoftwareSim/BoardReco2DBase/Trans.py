__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image
import os,re
import RGB2GARY,GARY2BIN

th_black = 100
th_white = 200

FileAll = []

for root,dirs,files in os.walk('./Image'):
    for f in files:
        if os.path.splitext(f)[1]=='.jpg' and not re.findall(r'gary|black|white',f):
        	FileAll.append((root+'/',f))

for root,f in FileAll:
	im_src = Image.open(root+f)
	s_x, s_y = im_src.size
	im_gary = Image.new('L', (s_x, s_y), 0)
	im_gary.putdata(RGB2GARY.transform(im_src))
	im_black = Image.new('1', (s_x, s_y), 0)
	im_white = Image.new('1', (s_x, s_y), 0)
	im_black.putdata(GARY2BIN.transform(im_gary,th_black))
	im_white.putdata(GARY2BIN.transform(im_gary,th_white))
	im_gary.save('./Image/gary' + f)
	im_black.save('./Image/black' + f)
	im_white.save('./Image/white' + f)