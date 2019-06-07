class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = MP3Importer.new('./spec/fixtures').import
  end

  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end