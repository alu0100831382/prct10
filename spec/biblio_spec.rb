require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe Bibliography do
    
   l1 = Bibliography.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0. (The Facets of Ruby)","Pragmatic Bookshelf","4 edition","(July 7, 2013)",["ISBN-13: 978-1937785499", "ISBN-10:1937785491"],"")
   l2 = Bibliography.new("Scott Chacon","Pro Git 2009th Edition","Apress","2009 edition","(August 27, 2009)",["ISBN-13: 978-1430218333. ISBN-10: 1430218339"],"")
   l3 = Bibliography.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","O’Reilly Media","1 edition","(February4, 2008)",["ISBN-10: 0596516177. ISBN-13: 978-0596516178"],"")
   l4 = Bibliography.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpecBook: Behaviour Driven Development with RSpec","Pragmatic Bookshelf","1 edition","(December 25, 2010)",["ISBN-10: 1934356379. ISBN-13: 978-1934356371"],"")
   l5 = Bibliography.new("Richard E. Silverman","Git Pocket Guide","O’Reilly Media","1 edition","(August 2, 2013)",["ISBN-10: 1449325866. ISBN-13: 978-1449325862"],"")
   
    describe Node do
       
    nodoa = Node.new(l1, nil)
    
    it "Existe un nodo de la lista con sus datos y su siguiente" do
        expect(nodoa.value).to eq(l1)
        expect(nodoa.next).to eq(nil)   
    end
end

describe List do
    
    node_a = Node.new(l1,nil)
    node_b = Node.new(l2,nil)
    node_c = Node.new(l3,nil)
    node_d = Node.new(l4,nil)
    node_e = Node.new(l5,nil)
    
    libros = [node_c, node_d, node_e]
    list_a = List.new(node_a)
    list_b = List.new(nil)
    
    #Comprobacion de las distintas pruebas
    it "Existe una lista con su cabeza" do
        expect(list_a.inicio).to eq(node_a)
    end
    
    it "Se puede insertar en la lista" do
        list_a.insert_list(node_b)
        expect(list_a.inicio).to eq(node_b)
    end
    
    it "Se puede extraer primer elemento de la lista" do
        expect(list_a.extract_list()).to eq(node_b)
    end
    
    it "Se puede insertar varios elementos a la lista" do
        list_a.insert_mult_list(libros)
        expect(list_a.inicio).to eq(libros[2])
    end
     
    it "La lista no esta vacia" do
        expect(list_a.empty()).to eq(false)
    end
    
    it "La lista esta vacia" do
        expect(list_b.empty()).to eq(true)
    end
    
end
end
end
