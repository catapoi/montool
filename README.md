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

Install mongo

sudo apt install linuxbrew-wrapper

brew install mongodb

Config Brew and Mongo

- Add Linuxbrew to your ~/.bash_profile by running
    echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.bash_profile
    echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.bash_profile
    echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.bash_profile
- Add Linuxbrew to your PATH
    PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
- We recommend that you install GCC by running:
    brew install gcc
- Run `brew help` to get started
- Further documentation: 
    http://docs.brew.sh
Warning: /home/linuxbrew/.linuxbrew/bin is not in your PATH.
