#!/usr/bin/env python3
# coding: utf-8

import os
import sys
import subprocess 
from time import sleep

from os import listdir, makedirs, devnull, rename
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

local_path = dirname(realpath(__file__))

timemax = "#const timemax"

FNULL = open(devnull, 'w')


#solution file name -> sol_3_4_n1  NON METTERE .asp NELL ALTRO 

def inplace_change(filename, old_string, new_string):
    # Safely read the input filename using 'with'
    with open(filename) as f:
        s = f.read()
        if old_string not in s:
            print('"{old_string}" not found in {filename}.'.format(**locals()))
            return

    # Safely write the changed content, if found in the file
    with open(filename, 'w') as f:
        print ('Changing "{old_string}" to "{new_string}" in {filename}'.format(**locals()))
        s = s.replace(old_string, new_string)
        f.write(s)

solution_file_name = local_path + "/ASP/clingo/solutions/"+str(sys.argv[3])+"/"+str(sys.argv[1])+".asp"


data_file_path = str(sys.argv[2])

def main():

	
	sat = 0

	steps_number = 0 

	max_iteration = 150

	while (sat != 1 and steps_number != max_iteration):

		print (steps_number)

		print (max_iteration)
	
		encoding_path = local_path + "/ASP/clingo/encoding/encoding_only_single.asp"

		times_path = local_path + "/ASP/clingo/times/single/"+str(sys.argv[3])
	

		if not os.path.exists(times_path):
			os.makedirs(times_path)

		times_path = times_path +"/time_" + str(sys.argv[1])+".txt"

		print ("Solving " + str(sys.argv[3]) + "\n")

		#'/usr/bin/time -f "%U %S" --output=' + times_path + 
		os.system(" clingo " + data_file_path  + " " + encoding_path + " > " + solution_file_name)

		sleep(2.0) 

		solution_file = open(solution_file_name,"r")	
	
		
		#print line in solution_file
		for line in solution_file:
			line = str(line.strip())
			#if line.find("SATISFIABLE") != -1:
			if line == "SATISFIABLE":
				print (sat)
				sat = 1
				print (sat)
				path = str(sys.argv[1])
				problem_name = path.split("/")		
				print ("Problem " + problem_name[-1] +": SOLUTION FOUND\n")

			#elif line.find("UNSATISFIABLE") != -1:
			elif line == "UNSATISFIABLE":
				steps_number = steps_number + 1
				data_file = open(data_file_path,"r+")
				for line in data_file:
					if line.find(timemax) != -1:
						words = line.split() 
						time = (words[-2])
						new_time = str(int(time) + 1)
						inplace_change(data_file_path,timemax +" = "+ time, timemax + " = " + new_time)
				data_file.close()
	
		solution_file.close()
			
	data_file = open(data_file_path,"r+")
	for line in data_file:
		if line.find(timemax) != -1:
			words = line.split() 
			time = (words[-2])
			new_time = "1"
			inplace_change(data_file_path,timemax +" = "+ time, timemax + " = " + new_time)
			
	data_file.close()

if __name__== "__main__":
  main()
