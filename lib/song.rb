class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_song = Song.new(song)
    new_song
  end
end
