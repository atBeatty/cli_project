require 'pry'
require 'open-uri'
require 'net/http'
require 'uri'
# require 'net/http'
require 'openssl'

require 'json'

class GetRequester
# attr_accessor :url, :uri, :response
# @@all = []

#     def initialize(url)
#     @url = url
#     @uri = URI.parse(@url)
    
#     @uri.open

#     end

#     def get_response_body
#     response = Net::HTTP.get_response(uri)
#     response.body
#     # binding.pry
#     end

#     def parse_json
#         # self.get_response_body
#         JSON.parse(self.get_response_body)
#     end


url = URI("https://api-basketball.p.rapidapi.com/{endpoint}")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-host"] = 'api-basketball.p.rapidapi.com'
request["x-rapidapi-key"] = 'c997edfd68msh82cc19b11a7c7c0p17d381jsn0b774b534944'

response = http.request(request)
puts response.read_body
end
