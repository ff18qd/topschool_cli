class TopschoolCliApp::Scraper

  def self.scrape_ee
    # this method is only used to grab the urls of the schools (not for creating objects)
    html = open("https://www.collegefactual.com/majors/engineering/ee-electrical-engineering/rankings/top-ranked/")
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
  end

end
