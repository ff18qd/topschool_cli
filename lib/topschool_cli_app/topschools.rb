class  TopschoolCliApp::Topschools
  attr_accessor :size, :age, :status, :research, :focus, :url, :name

  def self.electrical
    # puts "1. MIT"
    # puts "2. Stanford University"
    # puts "3. UC Berkley"

    top1 = TopschoolCliApp::Topschools.new
    top1.name = "MIT"
    top1.size = "<12000"
    top1.age = ">100 years"
    top1.status = "Private"
    top1.research = "Very High"
    top1.focus = "Comprehensive"
    top1.url = "https://www.topuniversities.com/universities/massachusetts-institute-technology-mit"

    top2 = TopschoolCliApp::Topschools.new
    top2.name = "Stanford University"
    top2.size = "<30000"
    top2.age = ">100 years"
    top2.status = "Private"
    top2.research = "Very High"
    top2.focus = "Comprehensive"
    top2.url = "https://www.topuniversities.com/universities/stanford-university"

    top3 = TopschoolCliApp::Topschools.new
    top3.name = "UC Berkeley"
    top3.size = "<30000"
    top3.age = ">100 years"
    top3.status = "Public"
    top3.research = "Very High"
    top3.focus = "Comprehensive"
    top3.url = "https://www.topuniversities.com/universities/university-california-berkeley-ucb"

    [top1, top2, top3]

  end

end
