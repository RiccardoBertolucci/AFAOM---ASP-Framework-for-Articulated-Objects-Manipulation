#!/usr/bin/env python
# coding: utf-8
import os
import subprocess
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

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
output_files_path = local_path + "/ASP/clingo/plans"


if not os.path.exists(output_files_path):
	os.makedirs(output_files_path) 




for subdir, dirs, files in os.walk(clingo_path):

    print "**********CHANGING FOLDER**********\n"
    folder_name = subdir.split("/")[-1]

    if not os.path.exists(output_files_path+ "/" + folder_name) :
        	os.makedirs(output_files_path+ "/" + folder_name) 
       
    clingo_file_flag = False
    actions = []

    for file in files:
#	output_files_name = "plan_"
	"""
	prob_name = str(file).replace("solution_","")
	prob_name = prob_name.replace(".asp",".pddl")
	output_files_name = output_files_name + prob_name
	output_file = open(output_files_path + "/" + output_files_name,"a")
	"""
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
						if "action" in i:
							action_to_append = i[9:]
							action_to_append = action_to_append[:-1]
							actions.append(action_to_append)

        

        output_file_name = file_name.replace(".asp",".pddl")
        output_file_name = output_file_name.replace("solution","plan")
        output_file = open(output_files_path + "/" + folder_name + "/" + output_file_name ,"w")
	
	print(output_files_path + "/" + folder_name + "/" + output_file_name)
        if len(actions) != 0:
            step = 0
	    names = [None] * len(actions)
	    data = [None] * len(actions)
            for i in actions:
		print ("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")
                line = i.replace(")","")
                line = line.split("(")

		index = line[1].split(",")
		index = int(index[-1])

		names[index] = line[0]
		data[index] = line[1]
	
	    for i in range(0,len(names)):
		print("CHACHACAHCHACACHCAHAC")
		cData = data[i].split(",")
		if "linkToCentral_Grasp" in names[i]:
			output_file.write("STEP "+ str(step) + ": link-to-central-grasp (link"+cData[0]+",link"+cData[1]+",joint"+cData[2]+",joint"+cData[3]+",gleft,gright)\n")
		elif "changeAngle_release" in names[i]:
			if int(cData[5]) > int(cData[6]):
				output_file.write("STEP "+ str(step) + ": increase-release (link"+cData[0]+",link"+cData[1]+",joint"+cData[2]+",gleft,gright,angle"+cData[6]+",angle"+cData[5]+")\n")
			elif int(cData[5]) < int(cData[6]):
				output_file.write("STEP "+ str(step) + ": decrease-release (link"+cData[0]+",link"+cData[1]+",joint"+cData[2]+",gleft,gright,angle"+cData[6]+",angle"+cData[5]+")\n")

		elif "grasp_changeAngle_release" in names[i]:
			if int(cData[5]) > int(cData[6]):
				output_file.write("STEP "+ str(step) + ": grasp-increase-release (link"+cData[0]+",link"+cData[1]+",joint"+cData[2]+",gleft,gright,angle"+cData[6]+",angle"+cData[5]+")\n")
			elif int(cData[5]) < int(cData[6]):
				output_file.write("STEP "+ str(step) + ": grasp-decrease-release (link"+cData[0]+",link"+cData[1]+",joint"+cData[2]+",gleft,gright,angle"+cData[6]+",angle"+cData[5]+")\n")
 #               if int(first_angle) < int(second_angle):
 #                   output_file.write("STEP"+ str(step) + ": decrease_angle(link" + first_joint + ",angle" + second_angle + ",angle" + first_angle + ")\n")

  #              elif int(first_angle) > int(second_angle):
  #                  output_file.write("STEP"+ str(step) + ": increase_angle(link" + first_joint + ",angle" + second_angle + ",angle" + first_angle + ")\n")

                       
                step = step + 1

                actions = []	
        else:
            output_file.write(line_to_write)

    	output_file.close()
    	clingo_file.close()


