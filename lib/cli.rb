require_relative './api.rb'




class CLI 


    def self.run
        puts "Hello. Welcome to the NBA ODDS app."
        puts "Please enter from the list what you would like to see."
        
    end

    def self.get_nba
        API.run_teams
    end



    
   


    # def run(input)

    #     puts "How are you? What sport would you like to query?"
    #     input = gets.chomp
    #     newapi = API.new
    #     puts newapi.run_seasons

    # end








end