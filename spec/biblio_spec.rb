require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe Bibliography do
    
   l1 = Bibliography.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0. (The Facets of Ruby)","(July 7, 2013)")
   l2 = Bibliography.new("Scott Chacon","Pro Git 2009th Edition","(August 27, 2009)")
   l3 = Bibliography.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","(February 4, 2008)")
   l4 = Bibliography.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpecBook: Behaviour Driven Development with RSpec","(December 25, 2010)")
   l5 = Bibliography.new("Richard E. Silverman","Git Pocket Guide","(August 2, 2013)")
   
    describe Node do
       
    nodoa = Node.new(l1, nil, nil)
    
    it "Existe un nodo de la lista con sus datos y su siguiente" do
        expect(nodoa.value).to eq(l1)
        expect(nodoa.next).to eq(nil)
        expect(nodoa.prev).to eq(nil)
    end
end

describe List do
    
    node_a = Node.new(1,nil,nil)
    node_b = Node.new(2,nil,nil)
    node_c = Node.new(3,nil,nil)
    node_d = Node.new(4,nil,nil)
    node_e = Node.new(5,nil,nil)
    libros = [node_c, node_d, node_e]
    list_a = List.new(node_a)
    list_b = List.new(nil)
    
    it "Existe una lista con su inicio y su final" do
        expect(list_a.inicio).to eq(node_a)
        expect(list_a.final).to eq(node_a)
    end
    
    it "Se puede insertar al inicio de la lista" do
        list_a.insert_list(node_b)
        expect(list_a.inicio).to eq(node_b)
    end
    
    it "Se puede extraer al inicio de la lista" do
        expect(list_a.extract_list()).to eq(node_b)
    end
    
    it "Se puede insertar al final de la lista" do
        list_a.insert_end(node_b)
        expect(list_a.final).to eq(node_b)
    end
      
    it "Se puede extraer al final de la lista" do
        expect(list_a.extract_end()).to eq(node_b)
    end
    
    it"La lista esta vacia" do
        expect(list_b.empty()).to eq(true)
    end
    
    it"La lista no esta vacia" do
        expect(list_a.empty()).to eq(true)
    end
    
    it "Se puede insertar varios libros" do
        list_a.insert_multiple(libros)
        expect(list_a.inicio).to eq(libros[2])
    end
end

describe Bibliography do
    
    context "Libros" do
        
        l6 = Libro.new("Richard E. Silverman","Git Pocket Guide","(August 2, 2013)","1 edition",["ISBN-10: 1449325866. ISBN-13: 978-1449325862"],"","O’Reilly Media")
        
        it "Comprobamos que el libro (l6) pertenece a la clase Libro" do
            expect(l6.instance_of?Libro).to eq(true)
        end
        
        it "Comprobamos que el libro (l6) es heredado de Bibliography" do
            expect(l6).to be_kind_of(Bibliography)
        end
    end
    
    context "Articulo" do
        
        a1 = Articulo.new("El mayor fabricante de drones impide que sobrevuelen estadios y embajadas","Ramon Peco","Noviembre de 2015","El Pais","16489357")
        
        it "Comprobamos que el articulo (a1) pertenece a la clase Articulo" do
            expect(a1.instance_of?Articulo).to eq(true)
        end
        
        it "Comprobamos que el articulo (a1) es heredado de Bibliography" do
            expect(a1).to be_kind_of(Bibliography)
        end
    end
end
end
end
