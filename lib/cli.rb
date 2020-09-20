



class CLI
    GAME = Game.new

    def run
        onboarding
        coach_select_player
        basketball_match
    end

    def onboarding
        puts Array.new(5, " ")
        puts "Hello. Welcome to the NBA Matchup app. You are the coach of the HOME TEAM. You will decide if you want to substitute your players after each period in tonight's match up.\n\nHere are the teams for tonight's matchup.\n\n"

        GAME.home_team.roster.collect{|pl| pl.full_name.join(" ")}.each.with_index(1){|pl, index| puts "#{index}. #{pl}"}
        puts "\n\nHOME\n\n=============\n\nAWAY\n\n"
        GAME.away_team.roster.collect{|pl| pl.full_name.join(" ")}.each.with_index(1){|pl, index| puts "#{index}. #{pl}"}
    end

    def basketball_match

        periods = ["FIRST", "SECOND", "THIRD", "FOURTH"]
        periods.each do |period|
            puts period
            puts GAME.total_points_from_lineups.join(" <HOME  AWAY> ")
            substitute
        end
        puts "END OF GAME"
    end

    def substitute
        puts "Do you want to make substitutions?"
        substitute_lineup

    end

    def coach_select_player
        puts "Coach, would you like to find out more about your players? (y) Or are you ready to play? (n)"
        player_selection
    end


    #HELPER METHOD FOR COACH_SELECT_PLAYER
    def player_selection
        input = gets.chomp
        if input == "y"
            puts "Which player would you like to choose?"
            number_index = gets.chomp
            puts GAME.home_team.roster[number_index.to_i-1].player_card
            coach_select_player
        elsif input == "n"
            puts "Game on!"
        else
            player_selection
        end
    end

    #HELPER METHOD FOR SUBSTITUTE
    def substitute_lineup
        input = gets.chomp
        if input == "y"
            binding.pry
            GAME.home_team.random_roster
            binding.pry
        elsif input == "n"
            puts "Here we go!"
        else
            substitute_lineup
        end

    end








   
end
