require 'open-uri'
require 'nokogiri'
require 'mongo'

site = "http://mattersofgrey.com/foursquare-badge-list/"

doc = Nokogiri::HTML(open(site))
doc.remove_namespaces!

# List all nodes path
#doc.traverse {|node| puts node.path}

# New badges
doc.search('//table[1]/tr/td[1][normalize-space()]').each do |b|
	puts b
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
