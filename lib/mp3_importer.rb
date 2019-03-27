class MP3Importer
  attr_reader :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    Dir.entries(self.path).select {|f| !File.directory? f}
  end

  def import
    self.files.each do |song|
      info = song.split(' - ').gsub(/.mp3/, '')
      Song.new(info[1])
    end
  end
end
