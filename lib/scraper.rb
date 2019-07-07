
html = open("https://www.womenslinkworldwide.org/en/awards/cases")
doc = Nokogiri::HTML(html)

class Scraper
 
 BASE_URL = 'https://www.womenslinkworldwide.org/en/awards/cases'
 
  def get_page
      doc = Nokogiri::HTML(open("https://www.womenslinkworldwide.org/en/awards/cases"))
  binding.pry
  end
 
end

Scraper.new.get_page


# # cases = doc.css("#instructors .team-holder .person-box")

# # # instructors.each do |instructor| 
# # #   puts "Flatiron School <3 " + instructor.css("h2").text
# # # # end

# def self.scrape_cases
#   pg = open(BASE_URL)
#   parsed_html = Nokogiri.HTML(pg)
#   case_names = parsed_html.css()