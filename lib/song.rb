class Song
  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist=nil, genre= nil)
    @name   = name
    @artist = artist
    @genre  = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    info = file.gsub(/.mp3/, '').split(' - ')
    song = Song.new(info[1])
    @@all << song
  end

  # def artist=(artist_name)
  #   # if self.artist.nil?
  #   #   self.artist = Artist.new(artist_name)
  #   # else
  #   #   self.artist.name = artist_name
  #   # end
  # end
end
