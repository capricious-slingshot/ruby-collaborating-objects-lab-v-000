class MP3Importer
  attr_reader :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    mp3s = Dir.entries(path).select {|f| !File.directory? f}
  end
end
