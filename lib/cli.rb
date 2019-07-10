class CLI
 
  def run
    
    puts "Welcome to the 2018 Gender Justice Awards!"
    puts "See cases nominated in the Gavel category for cases that promote gender equality and Bludgeon category for discriminatory decisions."
    puts "Below is a list of all the nominations"
    puts "To choose by category, type 'Gavel' or 'Bludgeon'."
    

    puts "   ___________ "
    puts "  '._==_==_=_.' "
    puts "  .-\:      /-. "
    puts " | (|:.     |) | "
    puts "  '-|:.     |-' "
    puts "    \::.    / "
    puts "     '::. .' " 
    puts "       ) ( " 
    puts "     _.' '._ " 
    puts "     ------- " 

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

