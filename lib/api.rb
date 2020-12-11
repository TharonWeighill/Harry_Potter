#getting data 
require_relative "../config/environment.rb"
class API

 
    def initialize
    @url = "https://donmallory.tech/rkSpells.json"
    create_spell
    end 
    
    def create_spell
        uri = URI.parse(@url)
        spells = Net::HTTP.get(uri)
        spell = JSON.parse(spells) 
        
        spell.each do |hash|
            Spell.new(hash)

        end 
    end 
 

end 