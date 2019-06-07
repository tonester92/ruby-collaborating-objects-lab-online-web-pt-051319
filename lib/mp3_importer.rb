class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
  end 

  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end