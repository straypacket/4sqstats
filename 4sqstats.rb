require "foursquare2"
require "JSON"

client = Foursquare2::Client.new(:oauth_token => 'ADB02WREAK4W4R5BDYBVEXHWB14VZM4TQOIWZCYAD1GY22EK')

checkins_a = {}

client.user_venue_history().items.each do |v|
	if v.venue.categories[0]
		if v.venue.categories[0].parents
			#puts "#{v.beenHere} #{v.venue.name} #{v.venue.categories[0].parents[0]}"
			checkins_a["#{v.venue.name} - #{v.venue.categories[0].parents[0]}"] = v.beenHere;
		else
			#puts "#{v.beenHere} #{v.venue.name} #{v.venue.categories[0]}"
			checkins_a["#{v.venue.name} - #{v.venue.categories[0]}"] = v.beenHere;
		end
	else
		#puts "#{v.beenHere} #{v.venue.name}"
		checkins_a["#{v.venue.name}"] = v.beenHere;
	end
end

puts checkins_a.sort_by {|k,v| v}.reverse