class Scraper
  
  GJUA_URL = "https://www.womenslinkworldwide.org"
  
  def self.scrape_gjua_court_cases
    html = open("https://www.womenslinkworldwide.org/en/awards/cases")

    doc = Nokogiri::HTML(html)

    doc.css(".contArt td").each do |court_case_doc|
      title = court_case_doc.css("h2").text
      url = court_case_doc.css("h2").css("a").attr("href").value
      country_gavel = doc.css(".cLeft td")[1].text
      country_bludgeon = doc.css(".cRight td")[1].text
      description = court_case_doc.css("div").text
      title_gavel_award_nominees = doc.css(".cLeft td")[0].text
      title_bludgeon_award_nominees = doc.css(".cRight td")[0].text
     
      Case.new(title, url)
    end
    
  end
  
  def self.scrape_court_case_details(court_case)
    html = open(GJUA_URL + court_case.url)
    doc = Nokogiri::HTML(html) 
    #minute 53 to find out how to get other selectors
    
  end
  
end