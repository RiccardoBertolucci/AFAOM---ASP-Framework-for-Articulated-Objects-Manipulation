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

domain = "/domain_only_macros"

#times

times_madagascar_path = local_path + "/PDDL/results/Mp" + domain
times_probe_path = local_path + "/PDDL/results/probe" + domain
times_clingo_path = local_path + "/ASP/clingo/times/total"

#actions

actions_madagascar_path = local_path + "/PDDL/results/Mp" + domain
actions_probe_path = local_path + "/PDDL/results/probe" + domain
actions_clingo_path = local_path + "/ASP/clingo/solutions"

path = local_path + "/ASP/clingo/data"

s_path = local_path + "/ASP/clingo/solutions"

output_files_path = local_path + "/times_output"


if not os.path.exists(output_files_path):
	os.makedirs(output_files_path) 

if not os.path.exists(output_files_path + "/reordered"):
	os.makedirs(output_files_path + "/reordered") 

print(times_clingo_path)

for subdir, dirs, files in os.walk(path):

	print ("**********CHANGING FOLDER**********\n")
	folder_name = (subdir.split("/"))[-1]

	output_files_name = "time_"+folder_name
	output_file = open(output_files_path + "/" + output_files_name + ".txt" ,"a")

	deleteContent(output_file)
	count = 0
	for file in files:

		file_name = str(file)	

		number = file_name.replace("p_","")
		number = number.replace(".asp","")
		
		file_action_name = "solution_"+number
		file_action_name_Mp = "prob-"+number+".pddl.1"
		file_action_name_probe = "prob-"+number+".pddl.1.1"

		file_time_name = "time_solution_"+number+".txt"

		probe_actions_file_flag = True
		
		madagascar_actions_file_flag = True

		clingo_actions_file_flag = True	

		#MADAGASCAR
		try:	
			print "OPENING FILE: " + actions_madagascar_path + "/" + file_action_name_Mp + "\n"
			madagascar_actions_file = open(actions_madagascar_path + "/" + file_action_name_Mp  ,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + actions_madagascar_path + "/" + file_action_name_Mp + "\n"
			madagascar_actions_file_flag = False
	
		#PROBE
		try:	
			print "OPENING FILE: " + actions_probe_path + "/" + file_action_name_probe + " \n"
			probe_actions_file = open(actions_probe_path + "/" + file_action_name_probe,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + actions_probe_path + "/" + file_action_name_probe + "\n"
			probe_actions_file_flag = False

		#CLINGO
		try:
			print "OPENING FILE: " + actions_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp" + "\n"
			clingo_file = open(actions_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp","r")
			clingo_num_lines = sum(1 for line in open(actions_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp"))

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + actions_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp" + "\n"
			clingo_num_lines = 0
			clingo_actions_file_flag = False


		
		#MADAGASCAR
		if madagascar_actions_file_flag == True: 
				madagascar_action = str(sum(1 for line in madagascar_actions_file))
				madagascar_actions_file.close()
		else:
			madagascar_action = "-1"

		#PROBE
		if probe_actions_file_flag == True: 
			probe_action = str(sum(1 for line in probe_actions_file))
			#probe_action = str( int(line[1].replace(":","")) + 1)
			probe_actions_file.close()
		else:
			probe_action = "-1"

		#CLINGO
		print "CLINGO NUM LINES " + str(clingo_num_lines)
		if clingo_actions_file_flag == True: 
			clingo_action = 0
			for line in clingo_file:
				if line == "UNSATISFIABLE":
					clingo_action = "-1"
				elif line == "UNKNOWN":
					clingo_action = "-1"
				elif clingo_num_lines < 4:
					#for i in range(1,100):
						#print "NUM lINES " + str(clingo_num_lines) 
					clingo_action = "-1"
				else:
					line = line.split()
					for i in line:
						if "action" in i:
							clingo_action = clingo_action + 1
					
		else:
			clingo_action = "-1"

		clingo_action = str(clingo_action)
		print "MADAGASCAR: computed actions: " + madagascar_action + "\n"
		print "PROBE: computed actions: " + probe_action + "\n"
		print "CLINGO: computed actions: " + clingo_action + "\n"


		probe_times_file_flag = True
		
		madagascar_times_file_flag = True

		clingo_times_file_flag = True

		#MADAGASCAR
		try:	
			print "OPENING FILE: " + times_madagascar_path + "/Tempi" + "\n"
			madagascar_file = open(times_madagascar_path + "/Tempi"  ,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + times_madagascar_path + "/Tempi" + "\n"
			madagascar_times_file_flag = False

		#PROBE
		try:	
			print "OPENING FILE: " + times_probe_path + "/Tempi" + "\n"
			probe_file = open(times_probe_path + "/Tempi"  ,"r")

		except IOError, Exception :
			print "FAILED TO OPEN FILE : " + times_probe_path + "/Tempi" + "\n"
			probe_times_file_flag = False
		
		#CLINGO
		try:	
			print "OPENING FILE: " + times_clingo_path + "/" + folder_name + "/" + file_time_name + "\n"
			clingo_file = open(times_clingo_path + "/" + folder_name + "/" + file_time_name ,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + times_clingo_path + "/" + folder_name + "/" + file_time_name + "\n"
			clingo_times_file_flag = False
		
		print(file_time_name)
		line_to_write = number

		print "WRITING OUTPUT FILE : " + output_files_name + "\n"

		#MADAGASCAR
		if madagascar_times_file_flag == True: 
			for line in madagascar_file:
				times = line.split(";")
				name = file_action_name_Mp.replace(".1","")
				#print("TIMES 0 ?= " + times[0] + " name ?= " + name)
				if times[0] == name:
					times = float(times[1])
					output_file.write("madagascar_"+line_to_write+","+str(times)+","+madagascar_action+"\n")
				"""				
				else:
					output_file.write("madagascar_"+line_to_write+",300,"+madagascar_action+"\n")
					break
				"""	
			madagascar_file.close()	
		else:
			output_file.write("madagascar_"+line_to_write+",300,"+madagascar_action+"\n")

		#PROBE
		if probe_times_file_flag == True: 
			for line in probe_file:
				times = line.split(";")
				name = file_action_name_probe.replace(".1.1","")
				if times[0] == name:
					times = float(times[1])
					output_file.write("probe_"+line_to_write+","+str(times)+","+probe_action+"\n")	
				"""				
				else:
					output_file.write("probe_"+line_to_write+",300,"+probe_action+"\n")
					break
				"""
			probe_file.close()
		else:
			output_file.write("probe_"+line_to_write+",300,"+probe_action+"\n")

		#CLINGO
		usr_time = 0
		sys_time = 0
		if clingo_times_file_flag == True: 
			flag_c = False
			for line in clingo_file:
				line = line.split()
				if line[1] == "user:":
					usr_time = line[2]
					output_file.write("clingo_"+line_to_write+","+str(float(usr_time))+","+clingo_action+"\n")
				"""elif line[1] == "system:":
					sys_time = line[2]
				if (float(usr_time) > 0.0 )& (float(sys_time) > 0.0):
					flag_c=True
					count=count+1
					print(count)
					print("TIMES " +str(float(usr_time) + float(sys_time)))
					output_file.write("clingo_"+line_to_write+","+str(float(usr_time) + float(sys_time))+","+clingo_action+"\n")
					sys_time = 0
					usr_time = 0"""
								
#			if flag_c == False:
#				output_file.write("clingo_"+line_to_write+",300,"+clingo_action+"\n")
			
			clingo_file.close()
		else:
			print("JHGYUJHGTY")
			output_file.write("clingo_"+line_to_write+",300,"+clingo_action+"\n")
		print "\n#########CHANGING EXPERIMENT#########\n\n"
	
	output_file.close()

mad = []
probe = []
clingo = []
for subdir, dirs, files in os.walk(output_files_path):
	for file in files:
		if file.find("madagascar") == -1: 
			read_file = open(output_files_path + "/" + file, 'r')
			write_file = open(output_files_path + "/reordered/" + file, 'w')
			print "FILE: " + file
			for line in read_file:
				if line.find("madagascar") != -1:
					mad.append(line)
				elif line.find("probe") != -1:
					probe.append(line)
				elif line.find("clingo") != -1:
					clingo.append(line)
			print("EOEOEEOEO")			
			print(len(mad))
			if len(mad) > 0:
				mad.sort()
#				mad.append(mad[1])
#				mad.pop(1)

				for item in mad:
					write_file.write(item)

			if len(probe) > 0:
				probe.sort()
#				probe.append(probe[1])
#				probe.pop(1)

				for item in probe:
					write_file.write(item)

			if len(clingo) > 0:
				print("ELLA PEPPA")
				print(len(clingo))
				clingo.sort()
#				clingo.append(clingo[1])
#				clingo.pop(1)

				for item in clingo:
					write_file.write(item)
			
			mad = []
			probe = []
			clingo = []

			read_file.close()
			write_file.close()


