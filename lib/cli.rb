# #handle all puts and gets "user interaction"
# class CLI 
# end 
require_relative "../config/environment.rb"

class CLI
   
    def initialize
        API.new
        puts Spell.all
        @spell = Spell.all
        binding.pry
        greeting
    end      
    def greeting
        puts ""
        menu 
    end 

    def menu
    #options and prompt
    #display menu take input
    end


end