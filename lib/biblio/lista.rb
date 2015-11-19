Node= Struct.new(:value, :next, :prev)

class List
    
    attr_accessor :inicio, :final 
    
    def initialize(node)
        @inicio = node
        @final = node
    end
    
    def extract_list()
        if (@inicio == nil)
            return nil
        else
            aux = @inicio
            @inicio = @inicio.next
            return aux
        end
    end
        
    def insert_list(nodo)
        if(@inicio == nil)
            @inicio = nodo
            @final = nodo
        else
            aux = @inicio.next
            @inicio = nodo
            @inicio.next = aux
            @inicio.prev = aux
        end
    end
end