Node = Struct.new(:value, :next)

class List
    
    attr_accessor :inicio
    
    def initialize(node)
        @inicio= node
    end
    
    def insert_list(nodo)
        if(@inicio == nil)
            @inicio = nodo
        else
            aux = @inicio.next
            @inicio = nodo
            @inicio.next = aux
        end
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
    
    def insert_mult_list(nodos)
        nodos.each do |element|
            insert_list(element)
        end
    end
    
    def empty()
        if(@inicio == nil)
            return true
        else
            return false
        end
    end
    
end