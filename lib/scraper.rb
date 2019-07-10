class Scraper
  
  GJUA_URL = "https://www.womenslinkworldwide.org"
  
  def self.scrape_gjua_nominations
    html = open("https://www.womenslinkworldwide.org/en/awards/cases")

    doc = Nokogiri::HTML(html)

    doc.css(".contArt td").each do |nominations_doc|
      title = nominations_doc.css("h2").text
      url = nominations_doc.css("h2").css("a").attr("href").value
      country_gavel = doc.css(".cLeft td")[1].text
      country_bludgeon = doc.css(".cRight td")[1].text
      description = nominations_doc.css("div").text
      title_gavel_award_nomination = doc.css(".cLeft td")[0].text
      title_bludgeon_award_nomination = doc.css(".cRight td")[0].text
     
      Nomination.new(title, url)
    end
    
  end
  
  def self.scrape_gjua_nomination_details(nomination)
    html = open(GJUA_URL + nomination.url)
    doc = Nokogiri::HTML(html) 
    
    #minute 53 to find out how to get other selectors
  end
  
  
end