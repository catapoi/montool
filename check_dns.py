#####################################################################################
#coding: utf-8
#	DNS check tool for Web Department
#	Bucharest October 2018
#	Catalin Poienaru
#	Version 0.1
#####################################################################################
import dns.resolver #import the module
import smtplib
server = smtplib.SMTP('viruswall.mgi.de', 25)

myResolver = dns.resolver.Resolver() #create a new instance named 'myResolver'
listtocheck = [ "broadmail.de", "campaign.episerver.net", "marketing.metro-cc.com", "demo.metrosystems.net", "developers-portal.metro.de", "Internal-communications.metro.de", "news.metro.it", "news.makro.be", "my.metro.be", "specials.makro.be", "newsletter.metro.at", "info.metro.at", "mail.metro.bg", "info.metro.bg", "newsletter.metro-cc.hr", "info.metro-cc.hr", "newsletter.makro.cz", "moje.makro.cz", "email.metro.fr", "news.metro24.de", "info.metro24.de", "hirlevel.metro.hu", "info.metro.hu", "newsletter.metro.co.in", "info.metro.co.in", "news.metro.it", "my.metro.it", "news.metro-cc.jp", "newsletter.metro.com.kz", "info.metro.com.kz", "newsletter.metro.md", "info.metro.md", "nieuws.makro.nl", "mijn.makro.nl", "dagdeal.makro.nl", "news.metro.pk", "info.metro.pk", "newsletter.makro.pl", "my.makro.pl", "mkcliente.makro.pt", "minhaconta.makro.pt", "dialog.metro.de", "newsletter.metro.ro", "my.metro.ro", "newsletter.metro-cc.ru", "my.metro-cc.ru", "newsletter.metro.rs", "info.metro.rs", "newsletter.metro.sk", "moje.metro.sk", "newsletter.makro.es", "micuenta.makro.es", "bulten.metro-tr.com", "bulten.gastronometro.com.tr", "newsletter.metro.ua", "my.metro.ua", "sales.metro.de" ]
print 'We will check ', len(listtocheck), ' DNS names'
print "  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ " 
for item in listtocheck:
	print "Check DNS zones for:"
	print item
	print "|----------------->"
	myArecords = myResolver.query(item, "A") #Lookup the 'A' record(s)
	myMXrecords = myResolver.query(item, "MX") #Lookup the 'MX' record(s)
	myTXTrecords = myResolver.query(item, "TXT") #Lookup the 'TXT' record(s)
	for adata in myArecords: #for each response
            print adata #print the data
#	    if adata == "193.169.180.193" :
#		print adata, " The response Ip is correct"
#	    else:
#		print adata, " The response Ip should be 193.169.180.193" 
	for mxdata in myMXrecords: #for each response
	    print mxdata #print the data
	for txtdata in myTXTrecords: #for each response
	    print txtdata #print the data
	print "|--------------------------------------------------|"
