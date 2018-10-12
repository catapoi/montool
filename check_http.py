#First tests for Bipul Infosys Publitas catalogues curl -Is https://view.publitas.com/metro-belgie-extra-nl/kimberly-clark-proffessional/page/1 | head -1
import requests

listtocheck = [ "https://view.publitas.com/metro-belgie-extra-nl/kimberly-clark-proffessional/page/1", "https://view.publitas.com/metro-belgique-extra-fr/catering_book_catalogue-amefa/page/1", "https://view.publitas.com/metro-belgie-nl/art-de-la-table-2018/page/1", "https://view.publitas.com/metro-belgique-fr/art-de-la-table-2018/page/1", "https://view.publitas.com/metro-solutions-nl/chef-44/page/1", "https://view.publitas.com/solutions-metro-fr/chef-44/page/1"]
for item in listtocheck:
	r = requests.get(item)
	print "Checking **************************************************"
	print item
	print "***********************************************************"
#	print(type(r))
	print "Http code returned", (r.status_code)
	if r.status_code == 200:
		print "Up and running"
	else:
		print "Unavailable"
	print ""
#	print(r.headers)
#	print(r.headers['content-type'])
#	print(r.text)

