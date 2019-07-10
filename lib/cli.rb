class CLI
 
  def run
    
    puts "\nWelcome to the 2018 Gender Justice Awards!\n"
    puts "See cases nominated in the Gavel category for cases that promote gender equality and Bludgeon category for discriminatory decisions."
    

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
    
    puts " Gavel Award Nominations"
    puts "Cases that promote gender equality"
    #scraper for Gavel Awards
    
    
    puts "Bludgeon Award Nominations"
    puts "Cases that perpetuate gender discrimination"
    #scraper for Bludgeon Awards

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
  
  def get_cases
    @bludgeon_cases = [1...15]
    @gavel_cases = [16..30]
  end
  
  
  
end

def list_gavel_nominations
  
end

def list_bludgeon_nominations
end

def get_user_court_case
  choose_court_case = gets.strip
  if valid_input(choose_court_case.to_1, @bludgeon_cases)
    input 
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to.i > 0
  end
end

