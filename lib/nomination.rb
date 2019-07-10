class Nomination
  
  attr_accessor :title, :url, :gavel_or_bludgeon_category, :description
  @@all =[]
  
  def initialize(title, url)
    @title = title
    @url = url
    @gavel_or_bludgeon_category = gavel_or_bludgeon_category 
    @description = description
    
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
end