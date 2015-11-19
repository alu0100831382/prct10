Node= Struct.new(:value, :next, :prev)

class List
    
    attr_accessor :inicio, :final 
    
    def initialize(node)
        @inicio = node
        @final = node
    end
end