require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists = @@artists.push(artist)
        @@genres = @@genres.push(genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.genre_count
        @@genres.reduce(Hash.new(0)) {|h,i| h[i] +=1 ; h}
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) {|h,i| h[i] +=1 ; h}
    end
end