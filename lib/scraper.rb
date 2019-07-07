class Scraper
  GJUA_URL = "https://www.womenslinkworldwide.org"
  def self.scrape_gjua_cases
    
    html = open ("https://www.womenslinkworldwide.org/en/awards/cases")

    doc = Nokogiri::HTML(html)

    doc.css(".contArt td").each do |case_doc|
      
      
      title = case_doc.css("h2").text
      url = case_doc.css("h2").css("a").attr("href").value
      Case.new(title, url)
    end
    binding.pry
  end
  
end