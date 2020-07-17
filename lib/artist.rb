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

  def self.find_or_create_by_name(name)
    if name == nil
      artist = Artist.new(name)
      artist
    else
      self.all.detect {|artist| artist.name == name}
    end
  end

  def self.all
    @@all
  end

  def songs
    @@songs
  end

  def print_songs
    print @@songs
  end
end
