require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe List do
    context "Las expectativas de enumerable" do
    before :each do
        @l1 = Bibliography.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0. (The Facets of Ruby)","(July 7, 2013)")
        @l2 = Bibliography.new("Scott Chacon","Pro Git 2009th Edition","(August 27, 2009)")
        @l3 = Bibliography.new(["David Flanagan, Yukihiro Matsumoto"],"Ruby Programming Language","(February 4, 2008)")
        @l4 = Bibliography.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpecBook: Behaviour Driven Development with RSpec","(December 25, 2010)")
        @l5 = Bibliography.new("Richard E. Silverman","Git Pocket Guide","(August 2, 2013)")
        
        @list_a = List.new()
        @list_b = List.new()
        
        @list_a.insert_list(@l1)
        @list_a.insert_list(@l3)
        @list_a.insert_list(@l4)
        @list_a.insert_list(@l2)
    end
    
    it "Comprobando el metodo all" do
        expect(@list_a.all?).to eq(true)
        expect(@list_b.all?).to eq(false)
    end
    
    it "Comprobando el metodo any" do
        expect(@list_a.any?).to eq(true)
        expect(@list_b.any?).to eq(false)
    end
    
    it "Comprobrando el metodo count" do 
        expect(@list_a.count).to eq(4)
    end
   
    it "Comprobrando el maximo de los libros" do
        expect(@list_a.max).to eq(@l4)
    end
         
    it "Comprobrando el minimo de los libros" do
        expect(@list_a.min).to eq(@l2)
    end
    
    it "Comprobrando el metodo sort" do
        expect(@list_a.sort).to eq([@l2,@l1,@l3,@l4])
    end
         
    it "Comprobrando el metodo drop" do
        expect(@list_a.drop(1)).to eq([@l4,@l3,@l1])
    end
         
    it "Comprobrando el metodo first" do
        expect(@list_a.first(1)).to eq([@l2])
    end
    
    it "Comprobando el metodo detect y find" do
        expect(@list_a.detect {|i| i == @l2}).to eq(@l2)
        expect(@list_a.find {|i| i == @l1}).to eq(@l1)
    end
    
describe Biblio do 
    context "Las expectativas de Comparable" do
    before :each do
        @l1 = Bibliography.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0. (The Facets of Ruby)","(July 7, 2013)")
        @l2 = Bibliography.new("Scott Chacon","Pro Git 2009th Edition","(August 27, 2009)")
        @a1 = Articulo.new("El mayor fabricante de drones impide que sobrevuelen estadios y embajadas","Ramon Peco","Noviembre de 2015","El Pais","16489357")
    end
    
    it "l1 > l2" do
        expect(@l1 > @l2).to eq(true)
    end
      
    it "l1 >= l2" do
        expect(@l1 >= @l2).to eq(true)
    end
    
    it "l2 < l1" do
        expect(@l2 < @l1).to eq(true)
    end
      
    it "l2 <= l1" do
        expect(@l2 <= @l1).to eq(true)
    end
    
    it "l1 == l1" do
        expect(@l1 == @l1).to eq(true)
    end

    it "l1 != l2" do
        expect(@l1 == @l2).to eq(false)
    end
      
    it "a1 != l1" do
        expect(@a1 == @l1).to eq(false)
    end

end
end
end
end
end
