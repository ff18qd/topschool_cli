class TopschoolCliApp::Scraper

  def self.scrape_ee
    # this method is only used to grab the names of the schools (not for creating objects)
    html = open("https://www.collegefactual.com/majors/engineering/ee-electrical-engineering/rankings/top-ranked/")
    # html = open("https://www.topuniversities.com/university-rankings-articles/university-subject-rankings/top-engineering-schools-us")
    doc = Nokogiri::HTML(html)
    toplists = {}

    binding.pry
    doc.css("div.collegeName a").each do |collegename|
      key = collegename.text
      toplists["#{key}"] = collegename.attr("href")
    end
    toplists
  end

  def details(name, showpage)
  #create another method for scraping the show page using the names that you scraped
    puts "#{name}:"
    html1 = open("https://www.collegefactual.com#{showpage}")
    doc1 = Nokogiri::HTML(html1)
    # doc1.css("#netPriceOverviewBox div h3").text
    # annual price number: doc1.css("#netPriceOverviewBox div div.number").text
    # doc1.css("#loanOverviewBox div h3").text
    # loan price number: doc1.css("#loanOverviewBox div div.number").text
    # doc1.css("#campusSettingOverviewBox div h3").text
    # campus setting: doc1.css("#campusSettingOverviewBox div div.contents").text
    puts "Annual net price:"

  end
end
