require_relative './api'


class Player

    attr_accessor :data, :id, :first_name, :height_feet, :height_inches, :last_name, :position, :team, :weight_pounds

    def initialize
        player_hash = API.get_player
        player_hash.each do |attr, val|
            self.send(("#{attr}="), val)
        end

    end

    
    #THIS IS AN ATTRIBUTE SETTER
    def stats
        stats_hash = API.get_player_stats["data"][0]
        
    end

    def player_card
        [@first_name, @last_name, @position, @team["full_name"]]
    end

    








end


