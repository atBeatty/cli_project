


class API 

    attr_accessor :json_response

    def initialize
        @json_response = {}
    end

    def self.run_seasons
        puts "Hello World"
        url = URI("https://api-basketball.p.rapidapi.com/seasons")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'api-basketball.p.rapidapi.com'
        request["x-rapidapi-key"] = 'c997edfd68msh82cc19b11a7c7c0p17d381jsn0b774b534944'
        response = http.request(request)
        @json_response = JSON.parse(response.read_body)
        # binding.pry
    end

    def self.run_nba
        url = URI("https://api-basketball.p.rapidapi.com/games?season=2019-2010&timezone=europe%252Flondon&league=12&date=2019-11-23&team=134")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'api-basketball.p.rapidapi.com'
        request["x-rapidapi-key"] = 'c997edfd68msh82cc19b11a7c7c0p17d381jsn0b774b534944'

        response = http.request(request)
       
        @json_response = JSON.parse(response.read_body)
        binding.pry
        puts @json_response
    end

    def self.endpoint_query(endpoint)

    end
    





end