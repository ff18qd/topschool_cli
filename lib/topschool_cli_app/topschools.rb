class  TopschoolCliApp::Topschools
  attr_accessor :annualprice, :loan, :campus, :url, :name, :location

  @@all = []

  def initialize(name = nil, url = nil, location = nil)
    @name = name
    @url = url
    @location = location
    self.save
  end

  def self.new_from_url(url)
    html1 = open(url)
    doc1 = Nokogiri::HTML(html1)
    self.new(
      doc1.css("div.collegeName a").text,
      url,
      doc1.css("div.cfRenderTextOnImage div.ellipsis")[1].text
    )
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def doc
    Nokogiri::HTML(open(self.url))
  end

  def loan
    @loan ||= doc.css("#loanOverviewBox div div.number").text
  end

  def annualprice
    @annualprice ||=  doc.css("div#netPriceOverviewBox div div.number").text
  end

  def campussetting
    @campus ||= doc.css("#campusSettingOverviewBox div div.contents").text
  end

  def self.annualprice_greater_than(num)
    results = []
    self.all.each do |school|
      # binding.pry
      if school.annualprice.gsub('$','').gsub(',','').to_i > num
        results << school
      end
    end
    results
  end

end
