class Bibliography
    
    attr_accessor :author,:title, :date, :editorial, :isbn10
    
    
     
    def initialize (autor,title,date,editorial,isbn10)
        @author = autor 
        @title = title
        @date = date
        @editorial = editorial
        @isbn10 = isbn10
    end
    
    
end