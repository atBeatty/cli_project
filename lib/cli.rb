require_relative './api.rb'




class CLI 


    def self.run
        puts "hello"
        puts "Here are a list of today's NBA games."
        input = gets.chomp
        API.run_nba
    end


    
   


    # def run(input)

    #     puts "How are you? What sport would you like to query?"
    #     input = gets.chomp
    #     newapi = API.new
    #     puts newapi.run_seasons

    # end








end