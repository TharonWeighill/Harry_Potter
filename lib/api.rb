#getting data 

class API

 
    def initialize
    @url = "https://donmallory.tech/rkSpells.json"
   
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