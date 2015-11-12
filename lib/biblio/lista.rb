Node = Struct.new(:value, :next)

class List
    
    attr_accessor :inicio
    
    def initialize(node)
        @inicio= node
    end
    
    def insert_list(nodo)
        if(@inicio == nil)
            @inicio= nodo
        else
            aux = @inicio.next
            @inicio= nodo
            @inicio.next = aux
        end
    end
    
end