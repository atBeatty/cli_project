# puts "Hello"
require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

require_relative './team.rb'


class API

    def self.get_player
        random_id = rand(300)
        url_1 = "https://www.balldontlie.io/api/v1/season_averages??season=2019&player_ids[]=#{random_id}"
        uri_1 = URI.parse(url_1)

        player_stats = JSON.parse(Net::HTTP.get_response(uri_1).body) #data hash

       


        url_2 = "https://www.balldontlie.io/api/v1/players/#{random_id}"
        uri_2 = URI.parse(url_2)
        player_card = JSON.parse(Net::HTTP.get_response(uri_2).body) #data hash

        player_profile = player_stats.merge(player_card)
        
        # binding.pry
        


        
    end



end