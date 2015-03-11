#coding = utf-8

__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image
import os,re
import Trans

LeftTop = (30,21)
RightBottom = (455,480)
GridWidth = 13
GridHeight = 14
Width = 485
Height = 496
GridDia = 35
GridRad = GridDia/2

th_black = 100
th_white = 200

FileAll = []

for root,dirs,files in os.walk('./Image'):
    for f in files:
        if os.path.splitext(f)[1]=='.jpg' and not re.findall(r'gary|black|white',f):
        	FileAll.append((root+'/',f))

def reco(im,color):
	def inrange(row,col):
		return row >= LeftTop[1]-GridRad and row <= RightBottom[1]+GridRad \
		 and col >= LeftTop[0]-GridRad and col <= RightBottom[0]+GridRad
	res_grids = []
	for i in range(GridHeight):
		res_grids.append([])
		for j in range(GridWidth):
			res_grids[i].append(0)
	now_row = 0
	now_col = 0
	now_grid_row = 0
	now_grid_col = 0
	one_grid_row = 0
	one_grid_col = 0
	for pix in im:
		if not inrange(now_row,now_col):
			one_grid_col = 0
		else:
			if one_grid_col == GridDia-1:
				one_grid_col = 0
				if now_grid_col == GridWidth-1:
					now_grid_col = 0
					if one_grid_row == GridDia-1:
						one_grid_row = 0
						if now_grid_row == GridHeight-1:
							now_grid_row = 0
						else:
							now_grid_row += 1
					else:
						one_grid_row += 1
				else:
					now_grid_col += 1
			else:
				one_grid_col += 1

			if pix == color:
				res_grids[now_grid_row][now_grid_col] += 1

		if now_col == Width-1:
			now_col = 0
			if now_row == Height-1:
				now_row = 0
			else:
				now_row += 1
		else:
			now_col += 1

	res = ''
	for l in res_grids:
		for p in l:
			res += str(p)+' , '
		res = res[:-3]
		res += '\n'
	return res[:-1]

for root,f in FileAll:
	ims = Trans.transform(root,f,th_black,th_white)
	im_black = ims['b'].getdata()
	im_white = ims['w'].getdata()
	fo = open(root+'black'+f+'.dat','w')
	fo.write(reco(im_black,0))
	fo.close()
	fo = open(root+'white'+f+'.dat','w')
	fo.write(reco(im_white,1))
	fo.close()