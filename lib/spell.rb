class Spell

    @@all = []
    @@type = []
  
  def initialize(hash)
    @@all << self 
      hash.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
 
    @@type << self.type
    
  end

  def self.search_by_type(type)
    @@all.select { |spell| spell.type == type}
  end

  def self.all
    @@all 
  end 
  
  def self.type
    @@type.uniq 
  end

  # def self.top_five_alpha_sorted_spells_by_type(type)
#   sorted_spells_by_type = self.search_by_type(type).sort_by {|s| s.spell}
#   return sorted_spells_by_type[0..4]
# end
end 

