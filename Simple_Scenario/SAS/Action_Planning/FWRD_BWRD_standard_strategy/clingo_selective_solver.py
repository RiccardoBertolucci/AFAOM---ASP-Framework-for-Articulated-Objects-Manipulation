#!/usr/bin/env python
# coding: utf-8
import os
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

__author__ = "Riccardo Bertolucci"
__copyright__ = "Copyright 2018, Riccardo Bertolucci"
__license__ = "GPLv3"
__version__ = "1.1.0"
__maintainer__ = "Riccardo Bertolucci"
__email__ = "Bertolucci@mat.unical.it"
__status__ = "Development"

local_path = dirname(realpath(__file__))

rootdir = local_path + '/problems'





def solution_name_generator(solution_name):
	solution_name = "solution_" + solution_name.replace(".asp","")
	return solution_name

def data_name_generator(data_name):
	return data_name

experiments = ["6_9","7_9","8_9","14_4"]


#experiments = ["10_2", "10_4", "10_6", "10_8", "10_9", "10_12", "11_2", "11_4", "11_6", "11_8", "11_9", "11_12", "12_2", "12_4", "12_6", "12_8", "12_9", "12_12", "13_2", "13_4", "13_6", "13_8", "13_9", "13_12", "14_2", "14_4", "14_6", "14_8", "14_9", "14_12"]


for x in experiments:	

	
	folder_name = x

	print "FOLDER NAME : " + folder_name
	
	solutions_directory_path = local_path + "/ASP/clingo/solutions/"+folder_name

	times_directory_path = local_path + "/ASP/clingo/times/total/"+folder_name

	data_directory_path = local_path + "/ASP/clingo/data/"+folder_name

	print data_directory_path

	if not os.path.exists(solutions_directory_path):
		os.makedirs(solutions_directory_path)

	if not os.path.exists(times_directory_path):
		os.makedirs(times_directory_path)

	for files in os.listdir(data_directory_path):

		print "FILE: " + files
	
		solution_name = solution_name_generator(os.path.basename(files))

		data_name = data_name_generator(os.path.basename(files))

		data_path = local_path + "/ASP/clingo/data/"+folder_name+"/"+data_name

		times_path = times_directory_path +"/time_" + solution_name +".txt"

		print "SOLVING: " + solution_name

		#command = 'ulimit -t 3600; /usr/bin/time -f "%U %S" --output=' + times_path + " ./wrapper_clingo.py " + solution_name + " " + data_path + " " + folder_name
		command = "./pyrunlim.py 2> "+ times_path+" -t3600 \"./wrapper_clingo.py " + solution_name + " " + data_path + " " + folder_name + "\""

		os.system(command)

		times_path = ""
