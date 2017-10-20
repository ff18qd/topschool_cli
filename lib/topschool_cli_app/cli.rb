class TopschoolCliApp::CLI

  def call
    # TopschoolCliApp::Topschools.electrical
    TopschoolCliApp::Scraper.scrape_ee
    list_schools
    menu
  end

  def list_schools
    puts "Top 10 engineering schools in US:"
    # puts "Top 10 Civil Engineering schools"

    # @eeschools.each.with_index(1) do |school,i|
    #   puts "#{i}. #{school.name}"
    # end
  end

  def menu
    input = " "
    while input != "exit"
      puts "Enter ranking number to see details of top 10 Electrial Engineering schools in US or type list again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        # the_school = @eeschools[input.to_i - 1]
        # puts "#{the_school.name}-school size #{the_school.size} - school age #{the_school.age}"
      elsif input == "list"
        list_schools
      else
        puts "Not sure what you want, please type list or type exit:"
      end

    end
  end

end
