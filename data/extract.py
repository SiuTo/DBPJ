#! /usr/bin/env python3.4

from loadData import loadcsv

def gen(attrFileName, dataFileName):
	attrFile = open(attrFileName, "r")
	lines = attrFile.readlines()
	items = [attr[lines[i][:-1]] for i in range(len(lines))]
		
	key = set()
	lines = []
	for i in range(0, m):
		if data[i][items[0]] not in key:
			key.add(data[i][items[0]])
			line = '"'+data[i][items[0]]+'"'
			for j in range(1, len(items)):
				line += ',"'+data[i][items[j]]+'"'
			lines.append(line+"\n")

	dataFile = open(dataFileName, "w")
	dataFile.writelines(lines)

data = loadcsv("data.csv")
m = len(data)
n = len(data[0])
attr = {}
for i in range(n):
	attr[data[0][i]] = i

gen("attr_list_1.txt", "data_1.csv")
gen("attr_list_2.txt", "data_2.csv")

