class Bibliography
    
    include Comparable
    attr_accessor :title,:author, :date
    
    def initialize(title,author,date)
        @title = title
        @author = author 
        @date = date
    end
    
    def <=>(other)
        if(@author != other.author)
            @author <=> other.author
        elsif(@author == other.author)
            @date <=> other.date
        end
    end
    
end

class Libro < Bibliography
    
    attr_accessor :edition,:volume,:place
     
    def initialize(title,author,date,edition,volume,place)
        @title = title
        @author = author 
        @date = date
        @edition = edition
        @volume = volume
        @place = place
    end
end
