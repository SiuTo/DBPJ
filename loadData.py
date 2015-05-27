#! /usr/bin/env python3.4

import re

def load(fileName):
	dataFile = open(fileName, "r")
	lines = dataFile.readlines()
	data = [re.findall('(?<=")[^"]*(?=",|"\n)', lines[i]) for i in range(len(lines))]

	#for i in range(len(data)):
	#	for j in range(len(data[i])-1):
	#		print('"{}",'.format(data[i][j]), end="")
	#	print('"{}"'.format(data[i][len(data[i])-1]))

	return data

