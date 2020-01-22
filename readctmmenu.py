#!/usr/bin/python
########################################################################################
# Get the EM hostname and user from ctm_menu and write it in emlist.txt		       #	
# Copyright Metrosystems Romania						       #	
# Bucharest January 2020							       #	
# Run in debugg mode if you change it and test using python -m pdb readctmmenu.py      #
# V2 by Cerberos								       #	
########################################################################################
import os
import subprocess
os.remove("emlist.sh")
f = open("/ctm007/emu007/software/metro/adm_server/scripts/ctm_srv.txt", "r")
g = open("emlist.sh", "a")
os.chmod("emlist.sh", 0755)
g.write("#!/bin/bash" + os.linesep)
g.write("set -x" + os.linesep)
for line in f:
	if line[:4] == '[EM]':
		product = line[12:22]
		empos = line.find('LXSRVMGI')
		endpos = empos+12
		em_user = line.find('emu')
		endemuser = em_user+6
		print(line[em_user:endemuser] + "@" + line[empos:endpos] + ".mgi.de")
		if line[em_user:endemuser] == 'emuser':
			g.write("ssh " + line[em_user:endemuser] + "@" + line[empos:endpos] + ".mgi.de \"bash -s\" -- < ./max_jobs9.sh 365 >> jobno " + "  #  " + product + os.linesep)
		else:
			g.write("ssh " + line[em_user:endemuser] + "@" + line[empos:endpos] + ".mgi.de \"bash -s\" -- < ./max_jobs.sh 365 >> jobno" + "  #  " + product +os.linesep)
g.close()
f.close()
subprocess.call("emlist.sh", shell=True)

