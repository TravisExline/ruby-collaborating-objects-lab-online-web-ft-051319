class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").map  do |file_name|
    file_name.gsub("#{@path}/", "")
    end
  end

  def import
    self.files.each{|new_song| Song.new_by_filename(new_song)}
  end
end
