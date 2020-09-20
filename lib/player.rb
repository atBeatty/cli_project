require_relative './api'


class Player

    attr_accessor :stats, :id, :first_name, :height_feet, :height_inches, :last_name, :position, :team, :weight_pounds

    def initialize
        player_hash = API.get_player
        player_hash.each do |attr, val|
            self.send(("#{attr}="), val)
        end
        @stats = API.get_player_stats
    end
    
    def points_per_whole_game

        @stats["data"].first["pts"] * (48 / @stats["data"].first["min"].to_f + 1)
    end



    def player_card
        [@first_name, @last_name, @position, @team["full_name"]]
    end
    
    def full_name
        [@first_name, @last_name]
    end


    








end


