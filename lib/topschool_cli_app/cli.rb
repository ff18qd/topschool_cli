class TopschoolCliApp::CLI

  def call
    TopschoolCliApp::Scraper.scrape_ee
    TopschoolCliApp::Scraper.makeschool
    list_schools
    menu
  end

  def list_schools
    puts "Top 10 Electrial Engineering schools in US:"
    TopschoolCliApp::Topschools.all.each.with_index(1) do |school, i|
      puts "#{i}. #{school.name}"
    end
  end

  def menu
    input = " "
    while input != "exit"
      puts "Enter school ranking number to see details or type list to see the list again or type exit:"
      input = gets.strip
      index = input.to_i-1
      if TopschoolCliApp::Topschools.all[index] && index.between?(0,9)
        the_school = TopschoolCliApp::Topschools.all[index]
        puts "#{the_school.name} - #{the_school.location}"
        puts "#{the_school.url}"
        puts "Annual Net Price: #{the_school.annualprice}"
        puts "Campus Setting: #{the_school.campussetting}"
        puts "Average Loan: #{the_school.loan}"
      elsif input == "list"
        list_schools
      else
        puts "Not sure what you want, please type list or type exit:"
      end
    end
  end

end
