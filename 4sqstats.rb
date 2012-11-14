require "foursquare2"
require "JSON"

client = Foursquare2::Client.new(:oauth_token => 'ADB02WREAK4W4R5BDYBVEXHWB14VZM4TQOIWZCYAD1GY22EK')

puts client.user_venue_history()
