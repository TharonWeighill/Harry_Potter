# #handle all puts and gets "user interaction"
# class CLI 
# end 


class CLI
   
    def run
        API.new.create_spell.select do |k|
            k.["type"]
            
    end      
   

end