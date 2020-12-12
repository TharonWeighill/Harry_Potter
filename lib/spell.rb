#stores all data for cli to get out 
require_relative "../config/environment.rb"

class Spell

    @@all = []
    @@type = []
    @@name = []
    @@effect = []

  def initialize(hash)
    @@all << self 
      hash.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
 
    @@type << self.type
    @@name << self
    @@effect << self.effect

  end

  def self.search_by_type(type)
    @@all.select { |spell| spell.type == type}
  end

  def self.search_by_name(name)
    @@all.select { |spell| spell.name == name}
  end

  def self.search_by_effect(effect)
    @@all.select { |spell| spell.effect == effect}
  end

  def self.all
    @@all 
  end 
  
  def self.type
    @@type.uniq 
  end

  def self.name
    @@name
  end 

  def self.effect
    @@effect
  end 

end 

