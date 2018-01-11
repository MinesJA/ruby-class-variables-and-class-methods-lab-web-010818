require 'pry'

class Song

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
   # => {"Beyonce" => 17, "Jay-Z" => 40}
  @@genre_count = {}
  # => {"rap" => 5, "rock" => 1, "country" => 3}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@artists << artist
    @@genres << genre
  end


  def self.count
    @@count
  end

  def self.artists

    @@artists.uniq

  end


  def self.genres
    @@genres.uniq
  end


  def self.genre_count
    uniques = @@genres.uniq

    uniques.each do |x|
      count = @@genres.count {|y| y == x}
      @@genre_count[x] = count
    end
    @@genre_count
  end


  def self.artist_count
    uniques = @@artists.uniq

    uniques.each do |x|
      count = @@artists.count {|y| y == x}
      @@artist_count[x] = count
    end
    @@artist_count
  end






end
