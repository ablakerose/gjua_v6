class CLI
  def run
    
    puts " the cli is running!"

    html = open ("https://www.womenslinkworldwide.org/en/awards/cases")

    doc = Nokogiri::HTML(html)

    doc.css(".contArt td").each do |case_doc|
      
      title = case_doc.css("h2").text
      Case.new(title)
    end
    
    Case.all.each.with_index(1) do |title, i|
      puts "#{i}. #{title}"
    end
  end
end

# class Judicial_Decision_Nomination
#   attr_accessor :award_type :topic :country :decision_name

#   @@all = []

#   def initialize
#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def self.reset_all
#     @@all.clear
#   end


# end
