class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    temp_array = []
    temp_array = filename.split(" - ")
    artist_name = temp_array[0]
    song_name = temp_array[1]
    # artist, song = filename.split(" - ")
    song = Song.new(song_name)
    song.artist_name = artist_name
    return song
  end
  
end