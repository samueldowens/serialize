class Song
  attr_accessor :title, :artist

  def serialize
      File.new("#{self.title.gsub(" ", "_")}.txt", "w")

      File.open("#{self.title.gsub(" ", "_")}.txt", "w") do |f|     
        f.print "#{self.artist.name} - #{self.title}"
      end
  end

end

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end