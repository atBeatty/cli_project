
require_relative './player'
class Team

    attr_accessor :roster, :lineup

    def initialize
        @roster = []
        8.times do 
            @roster << Player.new
        end
        @lineup = @roster.first(5)
    end

    def roster_names
        @roster.collect.with_index(1) do |player, index| 
            "#{index}. #{player.first_name} #{player.last_name}"
        end
    end
    
    #ROSTER OF 8 Players GETS SHUFFLED FOR THE PLAYING FIVE 
    def random_roster
        @roster.shuffle!
        @lineup = @roster.first(5)
    end
end
