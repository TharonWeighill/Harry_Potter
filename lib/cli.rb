# #handle all puts and gets "user interaction"
# class CLI 
# end 
require "ostruct"
require_relative "../config/environment.rb"

class CLI
    attr_accessor  :chosen_type, :chosen_spells

    def run
        API.new
        spell = Spell.all
        greeting
    end      

    def greeting
        puts"\n\n\n"
        puts"\t\t\t\t\t\t\t\t\t\t   Welcome to the Wizarding World!"
       
        menu 
    end 

    def menu
        puts"\n\n\n\n"
        puts"\t\t\t\t\t\t\t\t*                     What kind of wizard are you?                          * "
        puts"\t\t\t\t\t\t\t\t|  Choose a type of spell to cast on your best friend or your worst enemy!  | "
        puts "\n\n\n\n\n\n\n\n\n\n"
        puts "\nEnter a number"
        
        enter_type
        enter_spell
        replay
    end 
        
    def print_spell_types
        Spell.type.each.with_index(1) do |type, index|
            puts "#{index}. #{type}"
        end 
    end
        
        
    def enter_type
        print_spell_types
        input = gets.chomp()
        
        if input.to_i >= Spell.type.length || input.to_i == 0
            puts "\n\n\t  Sorry that's not a spell type!\n\n“Once again, you show all the sensitivity of a blunt axe.”
            – Nearly Headless Nick\n\n"
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
                chosen_spell = OpenStruct.new
                chosen_spell.name = s.spell
                chosen_spell.effect = s.effect
                @chosen_spells << chosen_spell  
            end 
        end    
        chosen_spells.each.with_index(1) do |s, index|
            puts "#{index}. #{s.name}"
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
            puts "You have chosen #{@chosen_spells[index].name}. It is #{@chosen_spells[index].effect}!"
        end 
    end 
    
    def replay
        puts "Still feeling magical? (y) to play again (n) to quit"
        input = gets.chomp()
        if input == "n"
            puts "\n\n“It does not do well to dwell on dreams and forget to live.” – Albus Dumbledore\n\n"
            return
        elsif input == "y"
            menu
        else
            puts "Incorrect choice, try again!"
            replay
        end 
    end 
end
