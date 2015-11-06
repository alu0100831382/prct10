class Bibliography
    
    attr_accessor :author,:title, :date, :editorial, :isbn10, :edition, :series
    
    
     
    def initialize (autor,title,date,editorial,isbn10,edition,series)
        @author = autor 
        @title = title
        @date = date
        @editorial = editorial
        @isbn10 = isbn10
        @edition = edition 
        @series = series
    end
    
    def to_s 
        
        if @author.is_a? Array and @isbn10.is_a? Array
        "#{@author.join(", ")}\n #{@title}\n #{@editorial}; #{@edition} #{@date}\n #{@isbn10.join(", ")}\n"
        
        
        elsif @isbn10.is_a? Array
        
        "#{@author}\n #{@title}\n #{@editorial}; #{@edition} #{@date}\n #{@isbn10.join(", ")}\n"
        
        
        elsif @author.is_a? Array
        
        "#{@author.join(", ")}\n #{@title}\n #{@editorial}; #{@edition} #{@date}\n #{@isbn10}\n"
        
        else
            "#{@author}\n #{@title}\n #{@editorial}; #{@edition} #{@date}\n #{@isbn10}\n"
            
        end
         
    end

    

end