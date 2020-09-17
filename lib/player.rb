require_relative './api'


class Player

    attr_accessor :games_played, :player_id, :season, :min, :fgm, :fga, :fg3m, :fg3a, :ftm, :fta, :oreb, :dreb, :reb, :ast, :stl, :blk, :turnover, :pf, :pts, :fg_pct, :fg3_pct, :ft_pct, :id, :first_name, :height_feet, :height_inches, :last_name, :position, :team, :weight_pounds

    def initialize
        player_hash = API.get_player
        player_hash.each do |attr, val|
            self.send(("#{attr}="), val)
        end
    end




    








end


