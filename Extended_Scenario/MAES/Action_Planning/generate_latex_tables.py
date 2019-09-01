#!/usr/bin/env python
# coding: utf-8
import os
import subprocess
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir


local_path = dirname(realpath(__file__))

#times

times_input_path = local_path + "/times_output/reordered"

#times_w_input_path = "/home/emarolab/ASP/CAPFW/times_output/reordered"

#times_w_input_path = "/home/berto/Desktop/PhD Code/CAPFW/times_output/reordered"

#times_no_input_path = "/home/berto/Desktop/PhD Code/CAPF_NOT_OPTIMAL/times_output/reordered"

output_files_path = "/home/berto/Desktop/latex_tables/source_files"

output_latex_tables = "/home/berto/Desktop/latex_tables/tables"

if not os.path.exists(output_files_path):
	os.makedirs(output_files_path)

if not os.path.exists(output_latex_tables):
	os.makedirs(output_latex_tables)



#print clingo_w_data
i = 0 
for subdir, dirs, files in os.walk(times_input_path):  


	for file in files:
		file_name = str(file)
		file_name = file_name.replace("time_","")
		file_name = file_name.replace(".txt","")

		madagascar_data = []
		probe_data = []
		clingo_data = []
		clingo_w_data = []
		clingo_no_data = []


		input_file =  open(times_input_path + "/" + str(file) ,"r")
		output_file= open(output_files_path + "/" + file_name + ".tex" ,"w")

		for line in input_file: 

			#MADAGASCAR
			if line.find("madagascar") != -1:
				madagascar_data.append(line)
			#PROBE
			if line.find("probe") != -1:
				probe_data.append(line)
			#CLINGO
			if line.find("clingo") != -1:
				clingo_data.append(line)
		input_file.close()
	


		#TIMES_TABLES
		
		output_file.write("\documentclass[8pt]{article}\n")
		output_file.write("\usepackage{pdflscape}\n") 
		output_file.write("\\"+"begin{document}\n")
		output_file.write("\\"+"pagenumbering{gobble}")
		output_file.write("\\" + "begin{landscape}\n")
		output_file.write("\\"+"section{Times Table}")
		output_file.write("\\"+"begin{tabular}{ | l | l | c | c | r | r | }\hline\n")
		output_file.write("Experiment Number")

		for count in range(1,6):
			output_file.write(" & " + str(count))

		output_file.write("\\\\ ")
		output_file.write(" \hline\nMadagascar")
		for words in madagascar_data: 
			words = words.split(",")
			output_file.write(" & " + words[1])
		output_file.write("\\\\ ")

		output_file.write(" \hline\nProbe")
		for words in probe_data: 
			words = words.split(",")
			output_file.write(" & " + words[1])
		output_file.write("\\\\ ")

		output_file.write(" \hline\nClingo")
		for words in clingo_data: 
			words = words.split(",")
			output_file.write(" & " + words[1])
		output_file.write("\\\\ \hline\n")
		output_file.write("\end{tabular}\n")

		#ACTION_TABLES

		output_file.write("\\"+"section{Actions Table}")
		output_file.write("\\"+"begin{tabular}{ | l | l | c | c | r | r | }\hline\n")
		output_file.write("Experiment Number")

		for count in range(1,6):
			output_file.write(" & " + str(count))

		output_file.write("\\\\ ")
		output_file.write("\hline\n Madagascar")
		for words in madagascar_data: 
			words = words.split(",")
			output_file.write(" & " + words[2].rstrip())
		output_file.write("\\\\ ")

		output_file.write("\hline\n Probe")
		for words in probe_data: 
			words = words.split(",")
			output_file.write(" & " + words[2].rstrip())
		output_file.write("\\\\ ")

		output_file.write("\hline\n Clingo")
		for words in clingo_data: 
			words = words.split(",")
			output_file.write(" & " + words[2].rstrip())
		output_file.write("\\\\ \hline\n")	
		output_file.write("\end{tabular}\n")
		output_file.write("\end{landscape}\n")
		output_file.write("\end{document}")	


		output_file.close()
		
		i = i +10

for subdir, dirs, files in os.walk(output_files_path):
	for file in files:
		command = "pdflatex -interaction nonstopmode -halt-on-error -output-directory " + output_latex_tables + " " +  output_files_path + "/" + str(file)
		os.system(command)

#		for subdir, dirs, files in os.walk(output_files_path + "/actions"):
#			for file in files:
#				command = "pdflatex -interaction nonstopmode -halt-on-error -output-directory " + output_latex_tables + "/actions " +  output_files_path + "/actions/" + str(file)
#				print command
#				os.system(command)


	
