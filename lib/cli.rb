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
        puts"
  


        "
        puts"                                                                              Welcome to the Wizarding World!"
        menu 
    end 

    def menu
        puts"






            "
        puts"                                                         *                     What kind of wizard are you?                          * "
        puts"                                                         |  Choose a type of spell to cast on your best friend or your worst enemy!  | "
        puts "
        
        
        
        
"
       Spell.type.each.with_index(1) do |type, index|
        puts "#{index}.#{type}"
        end 
        puts "
Enter a number"
         enter
    end 
        
    def enter
        input = gets.chomp()
        index = (input.to_i) - 1
        chosen_type = Spell.type[index]
        puts"                                                                                You have chosen to cast a #{chosen_type}!"   
        if chosen_type = (7) 
            puts "Sorry that's not a spell type!"
    
        end

        chosen_spell = Spell.name.each.with_index(1) do |name, index|
        puts "#{index}.#{name}"
        end 
    end 
end