#!/usr/bin/env python
# coding: utf-8
import os
import subprocess
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

__author__ = "Riccardo Bertolucci"
__copyright__ = "Copyright 2018, Riccardo Bertolucci"
__license__ = "GPLv3"
__version__ = "1.1.0"
__maintainer__ = "Riccardo Bertolucci"
__email__ = "Bertolucci@mat.unical.it"
__status__ = "Development"

def deleteContent(pfile):
    pfile.seek(0)
    pfile.truncate()

def count(sequence, item):
	cont=0
	for i in sequence:
    		if item==i:
        		cont+=1
	return cont


local_path = dirname(realpath(__file__))

clingo_path = local_path + "/ASP/clingo/solutions"

#actions
output_files_path = local_path + "/ASP/plans"


if not os.path.exists(output_files_path):
	os.makedirs(output_files_path) 




for subdir, dirs, files in os.walk(clingo_path):

    print "**********CHANGING FOLDER**********\n"
    folder_name = subdir.split("/")[-1]

    if not os.path.exists(output_files_path+ "/" + folder_name) :
        	os.makedirs(output_files_path+ "/" + folder_name) 
    
    output_files_name = "plan_"+folder_name
    output_file = open(output_files_path + "/" + output_files_name + ".txt" ,"a")
    clingo_file_flag = False
    actions = []

    for file in files:

        file_name = str(file)
		#CLINGO
    	try:
			print "OPENING FILE: " + clingo_path + "/" + folder_name + "/" + file_name + "\n"
			clingo_file = open(clingo_path + "/" + folder_name + "/" + file_name ,"r")
			clingo_num_lines = sum(1 for line in open(clingo_path + "/" + folder_name + "/" + file_name))
			clingo_file_flag = True

    	except IOError, Exception:
			print "FAILED TO OPEN FILE : " + clingo_path + "/" + folder_name + "/" + file_name + "\n"
			clingo_file_flag = False

		#CLINGO
    	if clingo_file_flag == True: 
			line_to_write = "UNSATISFABLE"
			for line in clingo_file:
				if line == "UNSATISFIABLE":
					line_to_write = "UNSATISFABLE"
				elif line == "UNKNOWN":
					line_to_write = "UNSATISFABLE"
				elif clingo_num_lines < 4:
					line_to_write = "UNSATISFABLE"
				else:
					line = line.split()
					for i in line:
						if "changeAngle" in i:
							actions.append(i)

        

        output_file_name = file_name.replace(".asp",".txt")
        output_file_name = output_file_name.replace("solution","plan")
        output_file = open(output_files_path + "/" + folder_name + "/" + output_file_name ,"w")

        if len(actions) != 0:
            step = 0
            for i in actions:
                line = i.replace("(",",")
                line = line.split(",")
                first_angle = line[3]
                second_angle = line[4]
                first_joint = line[1]
                second_joint = line[2]

 #               if int(first_angle) < int(second_angle):
 #                   output_file.write("STEP"+ str(step) + ": decrease_angle(link" + first_joint + ",angle" + second_angle + ",angle" + first_angle + ")\n")

  #              elif int(first_angle) > int(second_angle):
  #                  output_file.write("STEP"+ str(step) + ": increase_angle(link" + first_joint + ",angle" + second_angle + ",angle" + first_angle + ")\n")

                if int(first_angle) < int(second_angle):
                    output_file.write("(DECREASE_ANGLE LINK" + first_joint + " ANGLE" + second_angle + " ANGLE" + first_angle + ")\n")

                elif int(first_angle) > int(second_angle):
                    output_file.write("(INCREASE_ANGLE LINK" + first_joint + " ANGLE" + second_angle + " ANGLE" + first_angle + ")\n")
            
            
                step = step + 1

                actions = []	
        else:
            output_file.write(line_to_write)

    	output_file.close()
    	clingo_file.close()


