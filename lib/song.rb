class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end
  
  def self.count
    return @@count
  end
  
  def self.artists
    return @@artists.uniq
  end
  
  def self.genres
    return @@genres.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    
    @@genres.each do |genre|
      if genre_hash.key?(genre)
        genre_hash[genre] +=1
      else
        genre_hash[genre] = 1
      end
    end
    
    genre_hash
  end
  
  

end
