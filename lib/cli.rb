# #handle all puts and gets "user interaction"
# class CLI 
# end 
require_relative "../config/environment.rb"

class CLI
    attr_accessor  :chosen_type, :chosen_spells

    
   
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
       
        
        
        puts "
Enter a number"
        enter_type
        enter_spell
    end 
        
    def print_spell_types
        Spell.type.each.with_index(1) do |type, index|
            puts "#{index}. #{type}"
        end 
    end
        
        
    def enter_type
        print_spell_types 
        input = gets.chomp()
        if input.to_i >= 7 || input.to_i == 0
            puts "Sorry that's not a spell type!"
            enter_type
        else
            index = (input.to_i) - 1
            @chosen_type = Spell.type[index]
            puts"                                                                           You have chosen to cast a #{@chosen_type}!"   
            
        end
        
        
    end     

    def get_spell_names
        @chosen_spells = []
        Spell.all.each do |s|
            if s.type == @chosen_type
                @chosen_spells << s.spell
            end 
        end    
        chosen_spells.each.with_index(1) do |s, index|
            puts "#{index}. #{s}"
        end     
    end 

        
        


    def enter_spell
        puts "\nEnter the number of the spell you want to cast"
        get_spell_names

        input = gets.chomp()
    if  input.to_i == 0 || input.to_i > chosen_spells.length
        puts "\nThat's not a spell, try again!"
        enter_spell
    
    else 
        index = (input.to_i) - 1
        puts " You have chosen #{@chosen_spells[index]}"
        
    end 

    end 

    
end






# Spell.all.select { |s|s.type = chosen_type }