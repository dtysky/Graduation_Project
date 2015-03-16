#coding = utf-8

__author__ = 'Dai Tianyu (dtysky)'

from PIL import Image
import os,re
import Trans

LeftTop = (137,50)
RightBottom = (536,434)
GridWidth = 13
GridHeight = 13
Width = 640
Height = 480
#12
GridDia = ((RightBottom[0] - LeftTop[0]) >> 4) + ((RightBottom[0] - LeftTop[0]) >> 6) + ((RightBottom[0] - LeftTop[0]) >> 7)
GridRad = GridDia >> 1

print GridDia

th_black = 60
th_white = 130

reco_th_black = 500
reco_th_white = 500

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
						print now_row,now_col
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
			# res += str(p) + ' , '
			if color == 0:
				if p >= reco_th_black:
					res += '1 , '
				else:
					res += '0 , '
			else:
				if p >= reco_th_white:
					res += '1 , '
				else:
					res += '0 , '
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