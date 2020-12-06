class API
    
    def initialize
        @url = "https://donmallory.tech/rkSpells.json"
    
     
    end 

    def get_spell
        uri = URI(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)  
    end 


end


