
require_relative './player'
class Team

    attr_accessor :roster, :lineup
    #INITIALIZE WITH A ROSTER, FILLED WITH PLAYER OBJECTS
    def initialize
        @roster = []
        8.times do 
            roster << Player.new
        end
        @lineup = @roster.first(5)
    end

    #FOR ONBOARDING, THIS CAN DISPLAY NAMES OF ALL 8 PLAYERS ON THE ROSTER
    def roster_names
        @roster.collect.with_index(1) do |player, index| 
            "#{index}. #{player.first_name} #{player.last_name}"
        end
    end
    
    #ROSTER OF 8 PLAYERS GETS SHUFFLED FOR A NEW LINEUP OF 5 
    def random_roster
        @roster.shuffle!
        @lineup = @roster.first(5)
    end
end
