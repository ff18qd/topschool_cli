class  TopschoolCliApp::Topschools
  attr_accessor :size, :age, :status, :research, :focus, :url, :name

  def self.electrical
    self.scrape_schools
  end

  def self.scrape_schools
    schools = []
    schools << self.scrape_ee
    # top1 = TopschoolCliApp::Topschools.new
    # top1.name = "MIT"
    # top1.size = "<12000"
    # top1.age = ">100 years"
    # top1.status = "Private"
    # top1.research = "Very High"
    # top1.focus = "Comprehensive"
    # top1.url = "https://www.topuniversities.com/universities/massachusetts-institute-technology-mit"
    schools
  end
  #
  def self.scrape_ee
    html = open("https://www.collegefactual.com/majors/engineering/ee-electrical-engineering/rankings/top-ranked/")
    # html = open("https://www.topuniversities.com/university-rankings-articles/university-subject-rankings/top-engineering-schools-us")
    doc = Nokogiri::HTML(html)
    binding.pry
  end

end
