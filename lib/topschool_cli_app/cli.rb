class TopschoolCliApp::CLI

  def call
    list_schools
    menu
  end

  def list_schools
    # puts "Top 10 engineering schools in US:"
    # puts "Top 10 Civil Engineering schools"
    @eeschools = TopschoolCliApp::Topschools.electrical
  end

  # def details(num)
  #   case num
  #   when "1"
  #     puts "1. MIT public age>100 years"
  #   when "2"
  #     puts "2. Stanford University private age > 100 years"
  #   when "3"
  #     puts "3. UC Berkeley public age > 100 years"
  #   end
  # end

  def menu
    input = " "
    while input != "exit"
      puts "Enter ranking number to see details of top 10 Electrial Engineering schools in US or type list again or type exit:"
      input = gets.strip.downcase
      case input
      when "list"
        list_schools
      when "1"
        puts "1. MIT public age>100 years"
      when "2"
        puts "2. Stanford University private age > 100 years"
      when "3"
        puts "3. UC Berkeley public age > 100 years"
      else
        puts "Not sure what you want, please type list or type exit:"
      end
    end
  end

end
