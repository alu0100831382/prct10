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
    
    
    
end