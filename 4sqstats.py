import foursquare

client = foursquare.Foursquare(access_token='ADB02WREAK4W4R5BDYBVEXHWB14VZM4TQOIWZCYAD1GY22EK')
venues = client.users.venuehistory()['venues']['items']

for v in venues:
	if v['venue']['categories']:
		if v['venue']['categories'][0]['shortName']:
			print str(v['beenHere'])+' '+v['venue']['name'].encode('utf-8', 'ignore')+' '+v['venue']['categories'][0]['pluralName'].encode('utf-8', 'ignore')
		else:
			print str(v['beenHere'])+' '+v['venue']['name'].encode('utf-8', 'ignore')+' '+v['venue']['categories'][0].encode('utf-8', 'ignore')
	else:
		print str(v['beenHere'])+' '+v['venue']['name'].encode('utf-8', 'ignore')
