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
