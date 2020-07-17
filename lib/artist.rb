class Artist
  attr_accessor :name
  @@all = []
  @@songs = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def self.find(name)
   @@all.find do |artist|
     artist.name == name
   end
  end

  def create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.all
    @@all
  end

  def songs
    @@songs
  end

  def print_songs
    puts self.songs
  end
end
