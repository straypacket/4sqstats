require 'open-uri'
require 'nokogiri'
require 'mongo'

site = "http://mattersofgrey.com/foursquare-badge-list/"

doc = Nokogiri::HTML(open(site))
doc.remove_namespaces!

# Search for each <td class=​"badge">​…​</td>​
#doc.traverse {|node| puts node.path}

# New
doc.search('//table[1]/tr/td[1][normalize-space()]').each do |b|
	puts b
end

# Core
#doc.search('table[2] > tr > td[1][normalize-space()]').each do |b|
#	puts b
#end

# Expertise
#doc.search('table[3] > tr > td[1][normalize-space()]').each do |b|
#	puts b
#end

# City
#doc.search('table[4] > tr > td[1][normalize-space()]').each do |b|
#	puts b
#end
