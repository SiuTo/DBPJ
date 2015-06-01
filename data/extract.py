#! /usr/bin/env python3.4

from loadData import loadcsv
import csv

def gen(attrFileName, dataFileName):
	attrFile = open(attrFileName, "r")
	lines = attrFile.readlines()
	items = [attr[lines[i][:-1]] for i in range(len(lines))]
		
	key = set()
	newData = []
	for i in range(0, m):
		if data[i][items[0]] not in key:
			key.add(data[i][items[0]])
			row = [data[i][x] for x in items]
			newData.append(row)

	dataFile = open(dataFileName, "w")
	dataCSV = csv.writer(dataFile, quoting=csv.QUOTE_ALL, lineterminator='\n')
	dataCSV.writerows(newData)

data = loadcsv("data.csv")
m = len(data)
n = len(data[0])
attr = {}
for i in range(n):
	attr[data[0][i]] = i

gen("attr_list_1.txt", "data_1.csv")
gen("attr_list_2.txt", "data_2.csv")

