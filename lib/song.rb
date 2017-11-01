class Song

  @@count = 0
  @@songs = []
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@songs << self
    @@genres << self.genre
    @@artists << self.artist
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) do |hsh, genre|
      hsh[genre] += 1
      hsh
    end
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) do |hsh, artist|
      hsh[artist] += 1
      hsh
    end
  end


end
