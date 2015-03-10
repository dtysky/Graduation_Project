__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image
import os,re
import Trans

LeftTop = (25,20)
Width = 13
Height = 13
Grid = 25

th_black = 100
th_white = 200

FileAll = []

for root,dirs,files in os.walk('./Image'):
    for f in files:
        if os.path.splitext(f)[1]=='.jpg' and not re.findall(r'gary|black|white',f):
        	FileAll.append((root+'/',f))

for root,f in FileAll:
	ims = Trans.transform(root,f,th_black,th_white)
	im_black = ims['b'].getdata()
	im_white = ims['w'].getdata()
	