class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    genre.artists << self
    genre.songs << songs
    song
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
