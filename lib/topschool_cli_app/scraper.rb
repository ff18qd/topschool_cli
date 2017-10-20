class TopschoolCliApp::Scraper

  def self.scrape_ee
    # this method is only used to grab the names of the schools (not for creating objects)
    html = open("https://www.collegefactual.com/majors/engineering/ee-electrical-engineering/rankings/top-ranked/")
    # html = open("https://www.topuniversities.com/university-rankings-articles/university-subject-rankings/top-engineering-schools-us")
    doc = Nokogiri::HTML(html)

    toplists = []
    doc.css("div.collegeName a").each do |collegename|
      uri = collegename.attr("href")
      toplists << "https://www.collegefactual.com#{uri}"
    end
    toplists
  end

  def self.makeschool
  #create another method for scraping the show page using the names that you scraped
    self.scrape_ee.each do |url|
      TopschoolCliApp::Topschools.new_from_url(url)
    end
    # doc1.css("#netPriceOverviewBox div h3").text
    # annual price number: doc1.css("#netPriceOverviewBox div div.number").text
    # doc1.css("#loanOverviewBox div h3").text
    # loan price number: doc1.css("#loanOverviewBox div div.number").text
    # doc1.css("#campusSettingOverviewBox div h3").text
    # campus setting: doc1.css("#campusSettingOverviewBox div div.contents").text
    # annualprice = doc1.css("#netPriceOverviewBox div div.number").text
    # loan = doc1.css("#loanOverviewBox div div.number").text
    # campus = doc1.css("#campusSettingOverviewBox div div.contents").text
    # binding.pry
    # puts "Annual price: #{annualprice}"
    # puts "Avg student loan: #{loan}"
    # puts "Campus Setting: #{campus}"
  end

end
