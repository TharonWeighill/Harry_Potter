

class API

    @@spell = []
    @@type = []
    @@effect = []
 
    def initialize
    @url = "https://donmallory.tech/rkSpells.json"
   
    end 
    
    def create_spell
        uri = URI.parse(@url)
        spells = Net::HTTP.get(uri)
        spell = JSON.parse(spells) 
        spell.each do |key|
        @@spell << key["spell"]
        @@type << key["type"]
        @@effect << key["effect"]
        end 
    end 
   
def self.spell
    @@spell
end 

def self.type
    @@type
end 

def self.effect
    @@effect
end

API.new.create_spell
binding.pry
end 