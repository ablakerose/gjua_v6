class CLI
 
  def run
    
    puts " the cli is running!"

    Scraper.scrape_gjua_cases
  
    Case.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}"
    end
    
    menu
  end
  def menu
      puts "Please select a case to view case details."
      
      input = gets.chomp
      case = Case.all[input.to_i -1]
      
      Scraper.scrape_case_details(case)
  end
end

