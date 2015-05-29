#! /usr/bin/env python3.4

import re

def loadcsv(fileName):
	dataFile = open(fileName, "r")
	lines = dataFile.readlines()
	data = [re.findall('(?<=")[^"]*(?=",|"\n)', lines[i]) for i in range(len(lines))]
	dataFile.close()
	return data

