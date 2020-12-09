#stores all data for cli to get out 

class Spell
        def initialize(hash)
          hash.each do |key, value| 
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
    end
end 
