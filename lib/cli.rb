# #handle all puts and gets "user interaction"
# class CLI 
# end 
require_relative "../config/environment.rb"

class CLI
   
    def run
        API.new
        spell = Spell.all
        greeting
        binding.pry
    end      

    def greeting
        puts ""
        menu 
    end 

    def menu
    #options and prompt
    #display menu 
    #take input
    end



end