require_relative './api'


class Player
    
    attr_accessor :stats, :id, :first_name, :height_feet, :height_inches, :last_name, :position, :team, :weight_pounds
    
    
    def initialize
        player_hash = API.get_player
        
        player_hash.each do |attr, val|
            self.send(("#{attr}="), val)
        end
        @stats = API.get_player_stats(self.id)
        # puts self.stats
    end

    def points
        if self.stats["data"].empty?
            "This player is not good."
        else
            self.stats["data"][0]["pts"].to_i
        end

    end
    def rebounds
        self.stats["data"][0]["reb"].to_i
    end
    def assists
        self.stats["data"][0]["ast"].to_i
    end

    def points_per_full_game
        if self.stats["data"].empty?
            2
        else
            (self.stats["data"][0]["pts"] * (36 / self.stats["data"][0]["min"].to_f+2)/4).to_i
        end
        
    end


    def player_card
        [@first_name, @last_name, @position, @team["full_name"]]
    end

    def full_name
        [@first_name, @last_name]
    end

end

