
require_relative './api.rb'
class Player

    attr_accessor  :player_hash, :first_name, :last_name

    def initialize(player_hash=API.get_player)
        @player_hash = player_hash
        @first_name = player_hash["first_name"]
        @last_name = player_hash["last_name"]
        
        #SEASON AVERAGES
        

    end

    def full_name
       @first_name + " " + @last_name
    end


    def stats


        @pts = player_hash["data"].first["pts"]
        puts @pts
        @ast = player_hash["data"].first["ast"]
        puts @ast
        @reb = player_hash["data"].first["reb"] 
        puts @reb
    end








end


