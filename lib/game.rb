


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

    def total_points_from_lineups_home
binding.pry
        @home_team.lineup.each do |pl|
            if !pl.stats["data"].empty?
                puts "#{pl.id} PLAYER ID"
                puts "#{pl.full_name.join(" ")} #{pl.stats["data"][0]["pts"]}"
                @home_score += pl.stats["data"][0]["pts"].to_i
            else
                puts "#{pl.full_name.join(" ")} 2"
                @home_score += 2
            end
            binding.pry
        end
        @home_score
    end
    def total_points_from_lineups_away

        @away_team.lineup.each do |pl|
            if !pl.stats["data"].empty?
                puts "#{pl.full_name.join(" ")} #{pl.stats["data"][0]["pts"].to_i}"
                @away_score += pl.stats["data"][0]["pts"].to_i
            else
                puts "#{pl.full_name.join(" ")} 2"
                @home_score += 2
            end
        end
        @away_score
    end
end