class Song
  @@all = []
  attr_accessor :name
  attr_reader :artist

  def initialize(name, artist=nil, genre= nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_by_filename(file)
    info = song.gsub(/.mp3/, '').split(' - ')
    Song.new

  end
  # def artist=(artist_name)
  #   if self.artist.nil?
  #     self.artist = Artist.new(artist_name)
  #   else
  #     self.artist.name = artist_name
  #   end
  # end
end
