Node = Struct.new(:value, :next)

class List
    
    attr_accessor :inicio
    
    def initialize(node)
        @inicio= node
    end
    
end