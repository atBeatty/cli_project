


class API 

    def run
        puts "Hello World"
        url = URI("https://api-basketball.p.rapidapi.com/seasons")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'api-basketball.p.rapidapi.com'
        request["x-rapidapi-key"] = 'c997edfd68msh82cc19b11a7c7c0p17d381jsn0b774b534944'
        response = http.request(request)
        json_response = JSON.parse(response.read_body)
    end

    

end