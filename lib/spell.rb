#stores all data for cli to get out 
require_relative "../config/environment.rb"

class Spell

    @@all = []
    @@types = []

  def initialize(hash)
    @@all << self 
      hash.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
 
    @@types << self.type

  end

  def self.search_by_type(type)
    @@all.select { |spell| spell.type == type}
  end

  def self.types
      @@types.uniq 
  end

  def self.all
    @@all 
  end 
end 

