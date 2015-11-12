Node = Struct.new(:value, :next)

class List
    
    attr_accessor :inicio
    
    #Inicializo los nodos
    def initialize(node)
        @inicio= node
    end
    
    #Metodo que inserta un elto. a la lista"
    def insert_list(nodo)
        if(@inicio == nil)
            @inicio = nodo
        else
            aux = @inicio.next
            @inicio = nodo
            @inicio.next = aux
        end
    end
    
    #Metodo que extrae de la lista"
    def extract_list()
        if (@inicio == nil)
            return nil
        else
            aux = @inicio
            @inicio = @inicio.next
            return aux
        end
    end
    
    #Metodo que inserta multiples eltos. a la lista"
    def insert_mult_list(nodos)
        nodos.each do |element|
            insert_list(element)
        end
    end
    
    #Metodo que comprueba si la lista esta vacia o no"
    def empty()
        if(@inicio == nil)
            return true
        else
            return false
        end
    end
    
end