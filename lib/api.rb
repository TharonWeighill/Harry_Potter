class API
    
    def initialize
        @url = "https://donmallory.tech/rkSpells.json"
    end 

    def get_spell
        uri = URI(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response.body)
       

        all_spells = data("results")

        all_spells.each do |p|
            Spell.new(p)
        end 
    end 
 binding.pry

end 