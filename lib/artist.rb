class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    return @songs
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.find(name) == nil
      #puts "not found"
      self.create(name)
    else
      #puts "found"
      return self.find(name)
    end
  end
  
  def self.create(name)
    artist = Artist.new(name)
    @@all << artist
    return artist
  end

  def self.find(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      else
        # do nothing
      end
    end
    return nil
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
  def self.all
    return @@all
  end
end