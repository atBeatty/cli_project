



class CLI
    attr_accessor :home_players, :away_players, :home_score, :away_score
    #SET UP TWO TEAMS TO PLAY A BBALL GAME, USER IS THE HOME TEAM
    HOME_TEAM = Team.new
    AWAY_TEAM = Team.new
    



    def self.run
        puts "Hello. Welcome to the NBA Matchup app. You are the coach of the HOME TEAM. You will decide if you want to substitute your players after each period in tonight's match up.\n\n"
        CLI.team_selections
        CLI.display_player_card
        #GAME TIME
        self.game
        CLI.scoreboard
        CLI.subs
    end

    #PRINTS OUT HOME AND AWAY TEAM
    def self.team_selections
        puts "Here is tonight's matchup.\n"
        puts HOME_TEAM.roster_names
        puts "\nHOME\n===========================\nAWAY\n\n"
        puts AWAY_TEAM.roster_names
    end

    #RETRIEVES A PLAYER FROM THE TEAM AND GETS MORE INFO.
    def self.display_player_card
        puts "Would you like to see a player card? If so, enter a number from your team roster.\n\n"
        input = gets.chomp # WOULD YOU LIKE TO SEE PLAYER CARD?
        if input != "n"
            puts HOME_TEAM.roster[input.to_i-1].player_card
            self.display_player_card
        end
    end

    # #DISPLAY POINTS FROM EACH TEAM
    # def self.scoreboard(lineup)
    #     binding.pry
    # home_score = []
    # away_score = []
 
    #     @home_players.each do |pl|
    #         if !pl.stats["data"].empty?
    #             home_score << (pl.points_per_whole_game / 4)
    #         else
    #             home_score << 1.5
    #         end
    #     end
        
    #     @away_players.each do |pl|
    #         if !pl.stats["data"].empty?
    #             away_score << (pl.points_per_whole_game / 4)
    #             away_score << pl.full_name
    #         else
    #             away_score << 1.5
    #             away_score << pl.full_name

    #         end
    #     end
    #     puts "HOME TEAM - #{home_score.reduce(:+).to_i} AWAY TEAM - #{away_score.reduce(:+).to_i}"
    # end
    #DISPLAY POINTS FROM EACH TEAM
    def self.game

        #SCOREBOARD STARTS AT ZERO
        home_score = []
        away_score = []
        puts "Here are you starting lineups for tonight's match."
        @HOME_TEAM.random_roster_of_five
        
        @home_players.each do |pl|
            if !pl.stats["data"].empty?
                home_score << (pl.points_per_whole_game / 4)
            else
                home_score << 1.5
            end
        end
        
        @away_players.each do |pl|
            if !pl.stats["data"].empty?
                away_score << (pl.points_per_whole_game / 4)
                away_score << pl.full_name
            else
                away_score << 1.5
                away_score << pl.full_name
            end
        end
        puts "HOME TEAM - #{home_score.reduce(:+).to_i} AWAY TEAM - #{away_score.reduce(:+).to_i}"
    end

    #SUBSTITUTES
    def self.subs
        away_players = AWAY_TEAM.random_roster_of_five
        puts "Would you like to make changes to your lineup?"
        input = gets.chomp
        if input == "y"
            home_players = HOME_TEAM.random_roster_of_five
        else
            puts "You chose to keep the same players on the court."
        end
    end

    # #GAME TIME FIVE PLAYERS
        # def self.current_lineups
        #     puts "Here are the current lineups.\n\nHOME / AWAY\n"
        #     home_players = HOME_TEAM.starting_lineup
        #     home_players.each {|player| puts player.full_name.join(" ")}
        #     puts "===================================================="
        #     away_players = AWAY_TEAM.starting_lineup
        #     away_players.each {|player| puts player.full_name.join(" ")}
        # end




end