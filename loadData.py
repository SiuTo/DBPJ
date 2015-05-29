#! /usr/bin/env python3.4

import re

def loadcsv(fileName):
	dataFile = open(fileName, "r")
	lines = dataFile.readlines()
	data = [re.findall('(?<=")[^"]*(?=",|"\n)', lines[i]) for i in range(len(lines))]
	return data

data = loadcsv("data.csv")
m = len(data)
n = len(data[0])
reserve = [True]*n
attr = {}
for i in range(n):
	attr[data[0][i]] = i

print("Constant attributes:")
for j in range(n):
	same = True
	p = 1
	while p<n and data[p][j]=="":
		p += 1
	for i in range(p+1, n):
		if data[i][j]!="" and data[i][j]!=data[p][j]:
			same = False
			break
	if same:
		if p<n:
			value = data[p][j]
		else:
			value = ""
		print('{} = "{}"'.format(data[0][j], value))
		reserve[j] = False
print()

print("Duplicate attributes:")
for i in range(n):
	for j in range(i+1, n):
		if data[1][i]=="" or data[1][j]=="":
			continue
		same = True
		for l in range(1, m):
			if data[l][i]!=data[l][j]:
				same = False
				break
		if same:
			print(data[0][i], data[0][j])
			reserve[j] = False
print()

attrFile = open("attr_list.txt", "w")
lines = []
for i in range(n):
	if reserve[i]:
		lines.append(data[0][i]+"\n")
attrFile.writelines(lines)

dependFile = open("dependences.txt", "r")
lines = dependFile.readlines()
for k in range(len(lines)):
	items = lines[k].split()
	depend = [attr[items[i]] for i in range(len(items))]
	for j in range(1, len(depend)):
		ok = True
		check = {}
		print(items[0]+": "+items[j])
		for i in range(1, m):
			if data[i][depend[0]] in check:
				if check[data[i][depend[0]]]!=data[i][depend[j]]:
					ok = False
					print(i, data[i][depend[0]], check[data[i][depend[0]]], data[i][depend[j]])
			else:
				check[data[i][depend[0]]] = data[i][depend[j]]
		print(ok)

