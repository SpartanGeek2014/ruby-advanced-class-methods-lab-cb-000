class Song
  attr_accessor :name, :artist_name
  @@all = []

    def self.all
      @@all
    end

    def save
      self.class.all << self
    end

    def Song.create
      song = Song.create
      Song.all.include?(song)
    end

    def Song.new_by_name
      song = Song.new_by_name("The Middle")
      song.name
    end

    def Song.create_by_name
      song = Song.create_by_name("The Middle")
      song
      Song.all.include?(song)
    end

    def Song.find_by_name
      the_middle = Song.create_by_name("The Middle")
      Song.find_by_name("The Middle")
    end

    def Song.find_or_create_by_name
      song_1 = Song.find_or_create_by_name("Blank Space")
      song_2 = Song.find_or_create_by_name("Blank Space")
      song_1 == song_2
    end

    def Song.new_from_filename
      song = Song.new_from_filename("Taylor Swift - Blank Space")
      song.name
      song.artist_name
    end

    def Song.create_from_filename
      song = Song.create_from_filename("Taylor Swift - Blank Space.mp3")
      song.name
      song.artist_name
    end

    def
      Song.destroy_all
      Song.all.clear
    end

end
