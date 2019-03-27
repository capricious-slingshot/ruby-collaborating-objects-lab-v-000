class Song
  @@all = []
  attr_accessor :name
  attr_reader :artist

  def initialize(name, artist=nil, genre= nil)
    @name   = name
    @artist = artist
    @genre  = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_by_filename(file)
    info = song.gsub(/.mp3/, '').split(' - ')
    Song.new(info[1], info[0], info[2])
  end
  # def artist=(artist_name)
  #   if self.artist.nil?
  #     self.artist = Artist.new(artist_name)
  #   else
  #     self.artist.name = artist_name
  #   end
  # end
end
