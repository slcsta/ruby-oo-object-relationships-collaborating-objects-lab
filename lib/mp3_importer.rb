# I used resource: https://www.youtube.com/watch?v=HGOaPRBTqC8 to figure out this section of lab
# I used resource: https://github.com/learn-co-students/ruby-collaborating-objects-lab-v-000/pull/41/files

class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
    end

    def import
        files.each { |file| Song.new_by_filename(file) }    
    end
end