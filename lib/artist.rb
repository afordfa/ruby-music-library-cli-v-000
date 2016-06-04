class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    #save
    @songs = []
  end


  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    self.new(name)
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self
  end

  def genres
    self.songs.collect {|song| song.genre}.uniq
  end

#learn spec/002_artist_basics_spec.rb


end
