require "net/https"
require "uri"
require "JSON"

uri = URI.parse('https://api.foursquare.com/v2/users/self/venuehistory?oauth_token=ADB02WREAK4W4R5BDYBVEXHWB14VZM4TQOIWZCYAD1GY22EK&v=20121113')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(uri.request_uri)

response = http.request(request)
puts response.body.to_json
