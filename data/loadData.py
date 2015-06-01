#! /usr/bin/env python3.4

import csv

def loadcsv(fileName):
	dataFile = open(fileName, "r")
	dataCSV = csv.reader(dataFile)
	data = [row for row in dataCSV]
	dataFile.close()
	return data

