class TopschoolCliApp::CLI

  def call
    list_schools
    menu
  end

  def list_schools
    puts "Top 10 engineering schools in US:"
    puts "top 10 EE schools"
    puts "top 10 civil engineering schools"
  end

  def menu
    input = " "
    while input != "exit"
      puts "Enter the ranking of school that you would like to know more about or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Top 1st school..."
      when "2"
        puts "Top 2nd school..."
      end
    end
  end

end
