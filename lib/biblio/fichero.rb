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
        elsif(@date == other.date && @author == other.author)
            @title <=> other.title
        end
    end
    
    def to_s()
        @imprimir = "Autor/es: " + "#{@author}" + " Titulo: " + "#{@title}" + " Fecha: " + "#{@date}" 
    end
end

class Libro < Bibliography      #Clase para analizar los libros
    
    attr_accessor :edition,:volume,:place
     
    def initialize(title,author,date,edition,volume,place)
        @title = title
        @author = author 
        @date = date
        @edition = edition
        @volume = volume
        @place = place
    end
    
    def to_s()      #Formato dado para el APA en los libros
        @imprimir = "Autor/es: " + "#{@author}" + " Titulo: " + "#{@title}" + " Fecha: " + "#{@date}" + " Edicion: " + "#{@edition}" + " Volumen: " + "#{@volume}" + " Lugar de publicacion: " + "#{@place}" 
    end
end

class Articulo < Bibliography       #Clase para analizar los articulos

    attr_accessor :editor,:pages,:type
    
    def initialize(title,author,date,editor,pages,type)
        @title = title
        @author = author
        @date = date  
        @editor = editor
        @pages = pages
        @type = type 
    end
    
    def to_s()      #Formato dado para el APA en los articulos
        @imprimir = "Autor/es: " + "#{@author}" +  " Titulo: " + "#{@title}" + " Fecha: " + "#{@date}" +  " Editor: " + "#{@editor}" +  " Paginas: " + "#{@pages}" + " Obra: " + "#{@type}"
    end
    
    
end
