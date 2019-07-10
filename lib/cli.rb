class CLI
 
  def run
    
    puts "\nWelcome to the 2018 Gender Justice Awards!\n"

    # get_nominations
    # list_nominations
    # get_user_nomination
    
    Scraper.scrape_gjua_court_cases
  
    Case.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}"
    end
    
    list_nominations
  end
  
  def get_nominations
    @nominations = ['nomination 1', 'nominatino 2']
  end
  
  def list_nominations
      puts "Please select a case to view court case details."
      
      input = gets.chomp
      kase = Case.all[input.to_i - 1]
     
      Scraper.scrape_gjua_court_case_details(court_case)
  end
  
  def get_user_nomimination
    chosen_nomination = gets.strip.to_i
    if choose_court_case = gets.strip
    show_nomination_for(chosen nomination) if valid_input(choose_court_case.to_1, @bludgeon_cases)
    show_nominations
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to.i > 0
  end
  
  def show_nomination_for(chosen nomination)
    nomination = @nomination[chosen_nomination -1]
    puts "Here are the details for this nomination"
    #Nomination::Nominations.all.each do |nomination|
end

