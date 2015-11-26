require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe List do
    context "Las expectativas de enumerable"
    before :each do
        @l1 = Bibliography.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0. (The Facets of Ruby)","(July 7, 2013)")
        @l2 = Bibliography.new("Scott Chacon","Pro Git 2009th Edition","(August 27, 2009)")
        @l3 = Bibliography.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","(February 4, 2008)")
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
    
describe Biblio do 
    context "Expectativas de Comparable" do
    before :each do
        @l1 = Bibliography.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0. (The Facets of Ruby)","(July 7, 2013)")
        @l2 = Bibliography.new("Scott Chacon","Pro Git 2009th Edition","(August 27, 2009)")
    end
    
    it "l1 > l2" do
        expect(@l1 > @l2).to eq(true)
    end
      
    it "l1 >= l2" do
        expect(@l1 >= @l2).to eq(true)
    end


end
end
end
end
