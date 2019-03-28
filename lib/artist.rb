require 'pry'

class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
  	@name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    self.all.find do |artist|
      if artist.name.nil?
        Artist.new(artist_name)
      else artist.name == artist_name
        artist
      end
    end
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}" }
  end
end
