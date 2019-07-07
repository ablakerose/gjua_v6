class Scraper
  
  GJUA_URL = "https://www.womenslinkworldwide.org"
  
  def self.scrape_gjua_cases
    html = open("https://www.womenslinkworldwide.org/en/awards/cases")

    doc = Nokogiri::HTML(html)

    doc.css(".contArt td").each do |case_doc|
      title = case_doc.css("h2").text
      url = case_doc.css("h2").css("a").attr("href").value
      #description = 
      
      Case.new(title, url)
    end
    binding.pry
  end
  
  def self.scrape_case_details(case)
    html = open(GJUA_URL + case.url)
    doc = Nokogiri::HTML(html) 
    #minute 53 to find out how to get other selectors
    
  end
  
end