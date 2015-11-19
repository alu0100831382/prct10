class Bibliography
    
    attr_accessor :author,:title, :date
    
    def initialize(autor,title,date)
        @author = autor 
        @title = title
        @date = date
    end
end

class Libro < Bibliography
    
    attr_accessor :edition, :isbn, :serie, :editorial
     
    def initialize(autor,title,date,edition,isbn,serie,editorial)
        @author = autor 
        @title = title
        @date = date
        @edition = edition
        @isbn = isbn
        @serie = serie
        @editorial = editorial
    end
end

class Articulo < Bibliography
    
    attr_accessor :tipo, :issn
    
    def initialize(autor,title,date,type,issn)
        @author = autor 
        @title = title
        @date = date
        @type = type
        @issn = issn
    end
end