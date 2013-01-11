require "twitter"
require "JSON"

Twitter.configure do |config|
  config.consumer_key = 'gFboWG1ViUmlHEFtXxDhA'
  config.consumer_secret = 'WW7f7JTHOIKBcifhKjOuHvXa4jijSPQZ1qvajXQ5F0c'
  config.oauth_token = '666993-iqAryCMzBOJfvZpgOBOe2KCDUqrofteUkB2iDXeUs'
  config.oauth_token_secret = '3Jsua436nVAaplyCUd2DN448UmFlUZNltG5fvxYAwdw'
end

foo = Twitter.search("unlocked foursquare", :count => 3, :result_type => "recent").results.map do |status|
  "#{status.from_user}: #{status.text}"
end

#foo = Twitter.search("unlocked red cross foursquare until:2012-01-01 since:2011-12-01", :count => 3, :result_type => "recent").results.map do |status|
#  "#{status.from_user}: #{status.text}"
#end

puts foo