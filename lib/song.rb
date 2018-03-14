class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    temp_array = []
    temp_array = filename.split(" - ")
    artist = temp_array[0]
    song = temp_array[1]
    new_artist = Artist.new(artist)
    new_artist.add_song(song)
    new_artist.save
    # artist, song = filename.split(" - ")
    # new_song = self.new(song)
    # new_song.artist_name = artist
    # new_song.save
  end
  
end