class Spell

    @@all = []

        def initialize(spell)
          spell.each do |key, value| 
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
            @@all << self 
          end
        end
    
        def self.all
            @@all
         end 

    # def initialize(data)
    #     data.each do |current|
    #     current.each do |key, value| 
    #      puts current.spell
    #      puts current.effect
    #      puts current.type
    #     self.class.attr_accessor :spell, :effect, :type 
    #     self.send("#{key}=",value)        
    #     #  @@all << self    
    #  end 
    #  @@all << self 
    # end
    # # end 
    # def self.all
    #     @@all
    # end 
end 
binding.pry

