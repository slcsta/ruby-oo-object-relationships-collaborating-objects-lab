require "pry"

class Artist

    attr_accessor :name, :songs

    @@all = [] # class-level variable set to an array for all of

    def initialize(name)
        @name = name
        @songs = [] # only for each artist object
        save
    end

    def save
        @@all << self # take our object and push it to class-level variable so capital
    end

    def self.all # return that class level @@all
        @@all
    end

    def songs
        Song.all.select{ |song| song.artist == self }
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def self.find_or_create_by_name(name)
        self.all.find { |artist| artist.name == name } || artist = self.new(name)
    end

    def print_songs
        songs.each { |song| puts song.name } # iterate through and print artist's songs
    end
        

end