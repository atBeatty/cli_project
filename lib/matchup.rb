
#let the user through input describe the match up he or she wants to retrieve




class Matchup
    @attr_accessor :sport, :team_a, :team_b

    def initialize(input)
        @input = gets.chomp

    end

end
