



class CLI
    #SET UP TWO TEAMS TO PLAY A BBALL GAME, USER IS THE HOME TEAM
    puts "Hello. Welcome to the NBA Matchup app."
    HOME_TEAM = Team.new
    AWAY_TEAM = Team.new


    def self.run
        self.display_team_roster_names(HOME_TEAM)
        puts "===================================================="
        self.display_team_roster_names(AWAY_TEAM)

        self.onboarding

        
        
    end


    def self.onboarding
        puts "If you're ready to play, press (p). Or, select a player to find out more information."
        input = gets.chomp #GET INPUT FROM USER
        if input == "p"
            self.play_game
        elsif input.to_i < HOME_TEAM.roster.size
            self.display_player_card(input)
            sleep(2)
            self.display_player_averages(input)
            sleep(1)
            self.onboarding
        else
            self.onboarding
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
        puts "Here are your starting lineups."
        message_array = ["END OF FIRST QUARTER", "END OF FIRST HALF","END OF THIRD QUARTER", "END OF GAME"]
        puts "TIP OFF!!!"
        sleep(2)
        message_array.each do |period|
            puts "\n\nHOME\n\n#{HOME_TEAM.random_roster_of_five.join(", ")}"
            puts "\n\nAWAY\n\n#{AWAY_TEAM.random_roster_of_five.join(", ")}"
            puts "\n\n#{period}\n\n"
            sleep(2)
            puts "Would you like to make subs?"
            input = gets.chomp
        end

       


    end










   
    #GAMETIME

    #HALFTIME/BREAKDOWN


    #GAME OVER

    #MVP/HIGHLIGHTS


  




end