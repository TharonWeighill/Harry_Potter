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
        print_spell_types() 
        
        
        puts "
Enter a number"
        enter
    end 
        
    def print_spell_types
        Spell.type.each.with_index(1) do |type, index|
            puts "#{index}.#{type}"
        end 
    end
        
        
    def enter
        print_spell_types 
        input = gets.chomp()
        if input.to_i >= 7 || input.to_i == 0
            puts "Sorry that's not a spell type!"
            enter
        else
            index = (input.to_i) - 1
            chosen_type = Spell.type[index]
            puts"                                                                           You have chosen to cast a #{chosen_type}!"   
       
            chosen_spell = Spell.name.each.with_index(1) do |name, index|
                puts "#{index}.#{name}"
            end
        end 
    end 
end