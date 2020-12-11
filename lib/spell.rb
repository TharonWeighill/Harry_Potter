#stores all data for cli to get out 
require_relative "../config/environment.rb"

class Spell

    @@all = []

  def initialize(hash)
    @@all << self 
      hash.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value
    end
  end

  def self.all
    @@all 
  end 
end 

