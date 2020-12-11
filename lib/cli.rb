# #handle all puts and gets "user interaction"
# class CLI 
# end 
require_relative "../config/environment.rb"

class CLI
   
    def run
        API.new
        spell = Spell.all
        greeting
    end      

    def greeting
        puts"                                                                              Welcome to the Wizarding World!"
        menu 
    end 

    def menu
        puts"                                                         *                     What kind of wizard are you?                          * "
        puts"                                                         |  Choose a type of spell to cast on your best friend or your worst enemy!  | "
       Spell.types.each.with_index(1) do |type, index|
        puts " * "
        puts " | "
        puts "#{index}.#{type}"
       
       
    
    end 
        #options and prompt
        #display menu 
        #take input
    end



end