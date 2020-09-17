# puts "Hello"
require 'pry'
require 'open-uri'
require 'net/http'
require 'json'



class API

    def self.get_player
        random_id = rand(275)
        # url_1 = "https://www.balldontlie.io/api/v1/season_averages??season=2019&player_ids[]=#{random_id}"
        # uri_1 = URI.parse(url_1)
        # player_stats = JSON.parse(Net::HTTP.get_response(uri_1).body)["data"][0] #STATTRIBUTES
        
        url_2 = "https://www.balldontlie.io/api/v1/players/#{random_id}"
        uri_2 = URI.parse(url_2)
        player_card = JSON.parse(Net::HTTP.get_response(uri_2).body) #PLAYER CARD INFORMATION

        # player_profile = player_stats.merge(player_card)
        #MERGE THE TWO TO GET ONE DATA HASH
    end
end