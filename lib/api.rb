class API
    
    def initialize
        @url = "https://donmallory.tech/rkSpells.json"
    end 

    def run
        uri = URI(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
       
binding.pry
        # all_spells = data("results")

        # all_spells.each do |p|
        #     Spell.new(p)
        # end 
    end 


end 
