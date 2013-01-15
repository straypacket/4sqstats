require 'open-uri'
require 'nokogiri'
require 'mongo'

site = "http://mattersofgrey.com/foursquare-badge-list/"

doc = Nokogiri::HTML(open(site))

# List all nodes path
#doc.traverse {|node| puts node.path}

# New badges
doc.search('//table[1]/tr/td[1]/a[normalize-space()]').each do |b|
	badge = b.text.gsub(/^\s+/, "")
	subsite = b.values[0].to_s

	puts ("#{badge} - #{subsite}")

	# Parse badge site
	subdoc = Nokogiri::HTML(open(subsite))

	# Get stats
	subdoc.search('//html/body/div/div[2]/div[1]/ul/li[1]/div/div[2][normalize-space()]').each do |bs|
		puts bs.text.gsub(/^\s+/, "").scan(/"([^"]*)"/)
	end
end

# Core badges
#doc.search('table[2] > tr > td[1][normalize-space()]').each do |b|
#	puts b
#end

# Expertise badges
#doc.search('table[3] > tr > td[1][normalize-space()]').each do |b|
#	puts b
#end

# City badges
#doc.search('table[4] > tr > td[1][normalize-space()]').each do |b|
#	puts b
#end
