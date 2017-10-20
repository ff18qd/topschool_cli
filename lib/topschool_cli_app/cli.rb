class TopschoolCliApp::CLI

  def call
    # TopschoolCliApp::Topschools.electrical
    TopschoolCliApp::Scraper.scrape_ee
    TopschoolCliApp::Scraper.makeschool
    list_schools
    menu
  end

  def list_schools
    puts "Top 10 engineering schools in US:"
    TopschoolCliApp::Topschools.all.each.with_index(1) do |school, i|
      puts "#{i}. #{school.name}"
    end
  end

  def menu
    input = " "
    while input != "exit"
      puts "Enter school names to see details of top 10 Electrial Engineering schools in US or type list or type exit:"
      input = gets.strip

      if TopschoolCliApp::Topschools.find_by_name(input)
        the_school = TopschoolCliApp::Topschools.find_by_name(input)
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
