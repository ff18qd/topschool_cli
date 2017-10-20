class  TopschoolCliApp::Topschools
  attr_accessor :size, :age, :status, :research, :focus, :url, :name

  @@all = []

  def save
    @@all << self
  end


  def self.all
    @@all
  end




end
