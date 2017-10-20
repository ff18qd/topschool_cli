class  TopschoolCliApp::Topschools
  attr_accessor :annualprice, :loan, :campus, :url, :name, :location

  @@all = []

  def new_from_url(url)
    html1 = open(url)
    doc1 = Nokogiri::HTML(html1)
    self.new(
      doc1.css("div.collegeName a").text,
      url,
      doc1.css("div.collegeName div").text
    )
  end

  def initialize(name = nil, url = nil, location = nil)
    @name = name
    @url = url
    @location = location
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_name(name)
    # @schools.find do |key, value|
    #   if key == name
    #     TopschoolCliApp::Scraper.details(key,value)
    #   end
    # end
  end

end
