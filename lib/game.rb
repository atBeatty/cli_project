

require_relative './player.rb'
require_relative './team.rb'

class Game

    attr_accessor :home_team, :away_team, :home_score, :away_score

    def initialize
        @home_team = Team.new
        @away_team = Team.new
        @home_score = 0
        @away_score = 0
    end

    #GOES THROUGH CURRENT LINEUP AND ADDS PLAYERS POINTS TO HOME SCORES
    def total_points_from_lineups_home
        @home_team.lineup.each do |pl|
            if !pl.stats["data"].empty?
                puts "#{pl.full_name.join(" ")} #{pl.points_per_full_game}"
                @home_score += pl.points_per_full_game
            else
                puts "#{pl.full_name.join(" ")} 2"
                @home_score += 2
            end
        end
    end

    #GOES THROUGH CURRENT LINEUP AND ADDS PLAYERS POINTS TO AWAY SCORES
    def total_points_from_lineups_away
        binding.pry
        self.away_team.lineup.collect {|pl| pl.points}.inject{|sum, pts| sum + pts}


        @away_team.lineup.each do |pl|
            if !pl.stats["data"].empty?
                puts "#{pl.full_name.join(" ")} #{pl.points_per_full_game}"
                @away_score += pl.points_per_full_game
            else
                puts "#{pl.full_name.join(" ")} 2"
                @away_score += 2
            end
        end
    end
end