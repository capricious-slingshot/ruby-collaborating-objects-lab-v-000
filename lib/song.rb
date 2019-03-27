class Song
  @@all = []
  attr_accessor :name
  attr_reader :artist, :genre

  def initialize(name)
    @name   = name
    @artist = nil
    @genre  = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    info = file.gsub(/.mp3/, '').split(' - ')
    song = Song.new(info[1])
    song.artist=()
    @@all << song
  end

  def artist=(artist_name)
    self.artist = Artist.new(artist_name)
  end
end
