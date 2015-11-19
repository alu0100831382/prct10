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
    

end    
end
end
