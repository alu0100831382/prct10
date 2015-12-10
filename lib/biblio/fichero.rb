class Bibliography
    
    include Comparable
    attr_accessor :author,:title, :date
    
    def initialize(author,title,date)
        @author = author 
        @title = title
        @date = date
    end
    
end

class Libro < Bibliography
    
    attr_accessor :edition, :isbn, :serie, :editorial
     
    def initialize(author,title,date,edition,isbn,serie,editorial)
        @author = author 
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
    
    def initialize(author,title,date,type,issn)
        @author = author 
        @title = title
        @date = date
        @type = type
        @issn = issn
    end
end