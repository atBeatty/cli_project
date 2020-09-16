
require_relative './player.rb'

class Team

    attr_accessor :roster

    def initialize
        @roster = []
            8.times do 
            @roster << Player.new
        end
       
    
    end


end
