#!/usr/bin/env python
# coding: utf-8
import os
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

local_path = dirname(realpath(__file__))

__author__ = "Riccardo Bertolucci"
__copyright__ = "Copyright 2018, Riccardo Bertolucci"
__license__ = "GPLv3"
__version__ = "1.1.0"
__maintainer__ = "Riccardo Bertolucci"
__email__ = "Bertolucci@mat.unical.it"
__status__ = "Development"

rootdir = local_path + '/problems'

def solution_name_generator(solution_name):
	solution_name = solution_name.replace("problem_simplified_","")
	solution_name = solution_name.replace("_d1","")
	solution_name = solution_name.replace(".pddl","")
	solution_name = "solution_"+solution_name
	return solution_name

def data_name_generator(data_name):
	data_name = data_name.replace("problem_simplified_","")
	data_name = data_name.replace("_d1","")
	data_name = data_name.replace(".pddl","")
	data_name = data_name + ".asp"
	return data_name


for subdir, dirs, files in os.walk(rootdir):	

	
	folder_name = (subdir.split("/"))[-1]
	
	solutions_directory_path = local_path + "/ASP/clingo/solutions/"+folder_name

	times_directory_path = local_path + "/ASP/clingo/times/total/"+folder_name


	if not os.path.exists(solutions_directory_path):
		os.makedirs(solutions_directory_path)

	if not os.path.exists(times_directory_path):
		os.makedirs(times_directory_path)

	for file in files:

		print "FILE: " + file
	
		solution_name = solution_name_generator(os.path.basename(file))

		data_name = data_name_generator(os.path.basename(file))

		data_path = local_path + "/ASP/clingo/data/"+folder_name+"/"+data_name

		times_path = times_directory_path +"/time_" + solution_name +".txt"

		print "SOLVING: " + solution_name

		#command = 'ulimit -t 3600; /usr/bin/time -f "%U %S" --output=' + times_path + " ./wrapper_clingo.py " + solution_name + " " + data_path + " " + folder_name
		command = "./pyrunlim.py 2> "+ times_path+" -t3600 \"./wrapper_clingo.py " + solution_name + " " + data_path + " " + folder_name + "\""

		os.system(command)

		times_path = ""
