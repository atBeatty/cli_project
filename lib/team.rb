
require_relative './player'
class Team

    attr_accessor :roster

    def initialize
        @roster = []
        8.times do 
            @roster << Player.new
        end
        
    end

    def roster_names
        @roster.collect.with_index(1) do |player, index| 
            "#{index}. #{player.first_name} #{player.last_name}"
        end
    end

    def roster_ids
        @roster.collect.with_index(1) do |player| 
            player.player_hash["id"]
        end
    end
    
    #ROSTER OF 8 Players GETS SHUFFLED FOR THE PLAYING FIVE 
    def random_roster_of_five
        @roster.shuffle!.first(5)
    end
end
