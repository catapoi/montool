# montool
Monitoring tool for DNS and Http


  The purpose of this tool is to monitor DNS and Http:
  1. Monitor records for DNS (A, MX and Text/SFTP records).
  2. Check availability of http addresses
  
  
  Started October 2018


  Set up virtualenv,  On fresh Ubuntu run
  - sudo apt-get install python3-venv
  -  python3 -m venv montool-env
  It will create the virtenv in the current directory, and you'll to activate using:
  - source montool-env/bin/activate
  
https://linuxize.com/post/how-to-create-python-virtual-environments-on-ubuntu-18-04/ 


Set up mongodb with python

pip install pymongo==3.4.0 
import pymongo
brew install mongodb 

Check:

import pymongo

1. Install mongo

	sudo apt install -y mongodb

2. Register as a service
	sudo systemctl status mongodb
3. Check connection
	mongo --eval 'db.runCommand({ connectionStatus: 1 })'
	
	
	
Create virtualenv for python3 
https://help.dreamhost.com/hc/en-us/articles/115000695551-Installing-and-using-virtualenv-with-Python-3 
	
	MongoDB shell version v3.6.3
	connecting to: mongodb://127.0.0.1:27017
	MongoDB server version: 3.6.3
{
	"authInfo" : {
		"authenticatedUsers" : [ ],
		"authenticatedUserRoles" : [ ]
	},
	"ok" : 1
}

Install mongoengine

pip install mongoengine==0.10.7 


https://realpython.com/introduction-to-mongodb-and-python/ 

Add nano highlights  
I used this command to quickly enable all available languages.

find /usr/share/nano/ -iname "*.nanorc" -exec echo include {} \; >> ~/.nanorc

As mentioned in other answers, /usr/share/nano/ contains the definitions for different languages.

$ ls /usr/share/nano
asm.nanorc     fortran.nanorc   man-html       ocaml.nanorc   ruby.nanorc
awk.nanorc     gentoo.nanorc    man.nanorc     patch.nanorc   sh.nanorc
cmake.nanorc   groff.nanorc     mgp.nanorc     perl.nanorc    tcl.nanorc
c.nanorc       html.nanorc      mutt.nanorc    php.nanorc     tex.nanorc
css.nanorc     java.nanorc      nanorc.nanorc  pov.nanorc     xml.nanorc
debian.nanorc  makefile.nanorc  objc.nanorc    python.nanorc

Also mentioned, to enable highlighting for a language, you add include and the path to the language definition you want to enable to your ~/.nanorc file. So, for example, to enable C/C++ you would add this line.

include /usr/share/nano/c.nanorc



