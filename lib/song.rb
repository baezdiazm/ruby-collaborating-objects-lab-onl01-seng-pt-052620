class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def artist_name=(name)
    self.artist = name
  end

  def self.all
    @@all
  end
end
