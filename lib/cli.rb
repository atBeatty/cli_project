



class CLI
    #SET UP TWO TEAMS TO PLAY A BBALL GAME, USER IS THE HOME TEAM
    puts "Hello. Welcome to the NBA ODDS app."
    HOME_TEAM = Team.new
    AWAY_TEAM = Team.new


    def self.run
        self.display_team_roster_names(HOME_TEAM)
        puts "===================================================="
        self.display_team_roster_names(AWAY_TEAM)

        
        puts "If you're ready to play, press (p). Or, select a player to find out more information."
        input = gets.chomp #GET INPUT FROM USER
        if input == "y"
            self.play_game
        else
            self.display_player_card(input)
            self.display_player_averages(input)
            self.display_team_roster_names(HOME_TEAM)
            puts "Would you like to see any more information abou your team?"
        end
    end

    def self.display_team_roster_names(team)
        team.roster_names.each.with_index(1) do |player, index|
            puts "#{index}. #{player}"
        end
    end

    def self.display_player_card(input)
        puts HOME_TEAM.roster[input.to_i-1].player_card
    end

    def self.display_player_averages(input)
        player = HOME_TEAM.roster[input.to_i-1].stats.each do|key, value|
            puts "#{key} #{value}"
        end
    end

    def self.play_game

    end
    









   
    #GAMETIME

    #HALFTIME/BREAKDOWN


    #GAME OVER

    #MVP/HIGHLIGHTS


  




end