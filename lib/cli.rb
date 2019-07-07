class CLI
 
  def run
    
    puts " the cli is running!"

    Scraper.scrape_gjua_court_cases
  
    Case.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}"
    end
    
    menu
  end
  
  def menu
      puts "Please select a case to view court case details."
      
      input = gets.chomp
      kase = Case.all[input.to_i - 1]
     
      
      Scraper.scrape_gjua_court_case_details(court_case)
  end
  
end

