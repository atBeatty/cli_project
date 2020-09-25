class CLI
    GAME = Game.new

    def run
        onboarding
        Player.sort_by_name
        coach_select_player
        basketball_match
    end

    #ONBAORDING IS A CLI METHOD THAT EXPLAINS THE GAME TO THE USER AND THEN IT DISPLAYS TWO TEAMS, HOME AND AWAY
    def onboarding
        puts Array.new(5, " ")
        puts "Hello. Welcome to the NBA Matchup app. You are the coach of the HOME TEAM. You will decide if you want to substitute your players after each period in tonight's match up.\n\nHere are the teams for tonight's matchup.\n\n"

        #GAME.home_team.roster is an array of 8 player class instances
        GAME.home_team.roster.collect{|pl| pl.full_name.join(" ")}.each.with_index(1){|pl, index| puts "#{index}. #{pl}"}
        puts "\n\nHOME\n\n=============\n\nAWAY\n\n"
        GAME.away_team.roster.collect{|pl| pl.full_name.join(" ")}.each.with_index(1){|pl, index| puts "#{index}. #{pl}"}
    end

    #BASKETBALL_MATCH IS A CLI METHOD THAT ITERATES THROUGH FOUR PERIODS OF A BASKETBALL MATCH, WITHIN THE LOOP IT USES GAME METHODS WHICH AGGREGATE POINTS BASED ON AVERAGE PTS FROM THE PLAYER STATS PROPERTY
    def basketball_match
        GAME.away_score = 0
        GAME.home_score = 0
        periods = ["FIRST", "SECOND", "THIRD", "FOURTH"]
        periods.each do |period|
            GAME.total_points_from_lineups_home
            puts "\n\nHOME\n\n=============\n\nAWAY\n\n"
            GAME.total_points_from_lineups_away
            puts "\n\n#{GAME.home_score} < HOME AWAY > #{GAME.away_score}\n\n"
            #AWAY TEAM WILL ALSO ROTATE EVERY PERIOD
            GAME.away_team.random_roster
            puts "\n\nEND OF #{period}\n\n"

            #USER GETS TO MAKE SUBS BEFORE NEXT PERIOD 
            substitute unless period == "FOURTH"
        end
        puts "\n\nEND OF GAME\n\n"
        rematch
    end

    #ALLOWS USER TO SELECT A REMATCH WITH SAME SQUAD
    def rematch
        puts "\nRematch?\n"
        input = gets.chomp
        if input == "y"
            self.basketball_match
        end
    end

    #ALLOWS USER TO DECIDE TO MAKE SUBS
    def substitute
        puts "\n\nDo you want to make substitutions?\n"
        substitute_lineup
    end

    #PART OF ONBOARDING, ALLOWS USER TO FIND OUT MORE ABOUT A GIVEN PLAYER ON THEIR TEAM
    def coach_select_player
        puts "\n\nCoach, would you like to find out more about your players? (y) Or are you ready to play? (n)\n\n"
        player_selection
    end

    #HELPER METHOD FOR COACH_SELECT_PLAYER
    def player_selection
        input = gets.chomp
        if input == "y"
            puts "Which player would you like to choose?"
            number_index = gets.chomp
            puts GAME.home_team.roster[number_index.to_i-1].player_card
            puts "#{GAME.home_team.roster[number_index.to_i-1].points} points per game"
            coach_select_player
        elsif input == "n"
            puts "\n\nGAME TIME, LET'S GET READY FOR TIP!\n\n"
        else
            player_selection
        end
    end

    #HELPER METHOD FOR SUBSTITUTE
    def substitute_lineup
        input = gets.chomp
        if input == "y"
            GAME.home_team.random_roster
        elsif input == "n"
            puts "Here we go!"
        else
            substitute_lineup
        end
    end
end
