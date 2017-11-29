import numpy as np
import os

path = './datasets/ILSVRC2015/Data/VID/train/'
#path = './datasets/ILSVRC2015/Annotations/VID/train/'

folders = ['a/', 'b/', 'c/']

for i in range(3):
	fold = folders[i]
	print('Start to remove files in (' + fold + ') ')
	for root1, dirs1, files1 in os.walk(path + fold):
		for idx, dir in enumerate(sorted(dirs1)):
			if idx%100==0:
				print(str(idx) + ' iter - Start to remove files in (' + fold + dir + ')')
			for root, dirs, files in os.walk(path + fold + dir +'/'):
				for file in files:
					fnum = file.split('.')
					if int(fnum[0]) > 20:
						os.remove(path + fold + dir + '/' + file)



































