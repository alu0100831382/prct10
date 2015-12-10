require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe List do
    context "Las pruebas de los libros" do
    before :each do
        @l1 = Bibliography.new("Programming Ruby 1.9 & 2.0. (The Facets of Ruby)","Dave Thomas","(July 7, 2013)","(1 Edicion)","(2)","España")
        @l2 = Bibliography.new("Pro Git 2009th Edition","Scott Chacon","(August 27, 2009)","(1 Edicion)","(1)","Inglaterra")
        @l3 = Bibliography.new("Ruby Programming Language","David Flanagan","(February 4, 2008)","(1 Edicion)","Francia")
        @l4 = Bibliography.new("The RSpecBook: Behaviour Driven Development with RSpec","David Chelimsky","(December 25, 2010)","(1)","España")
        @l5 = Bibliography.new("Git Pocket Guide","Richard E. Silverman","(August 2, 2013)","(2)","Francia")
        
        @list_a = List.new()
        @list_b = List.new()
        @list_c = List.new()
        
        @list_a.insert_list(@l1)
        @list_a.insert_list(@l3)
        @list_b.insert_list(@l4)
        @list_b.insert_list(@l2)
        @list_c.insert_list(@l3)
        @list_c.insert_list(@l1)
        
        it "Autores distintos, ordenados por autores" do
            expect(@list_a.sort).to eq([@l1,@l2])
         end
        
    end
end
end
end
