require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe Biblio do
    context "Las pruebas de los libros" do
    before :each do
        @l1 = Libro.new("Programming Ruby 1.9 & 2.0","Thomas, D.","(2013)","(1 Edicion)","(2)","Inglaterra")
        @l2 = Libro.new("Pro Git 2009th Edition","Chacon, S.","(2009)","(5 Edicion)","(3)","Inglaterra")
        @l3 = Libro.new("Ruby Programming Language","Chacon, S.","(2008)","(2 Edicion)","(1)","Inglaterra")
        @l4 = Libro.new("The RSpecBook: Behaviour Driven Development with RSpec","Chacon, S.","(2008)","(1 Edicion)","(2)","Inglaterra")
        
        @list_a = List.new()
        @list_b = List.new()
        @list_c = List.new()
        
        @list_a.insert_list(@l2)
        @list_a.insert_list(@l1)
        @list_b.insert_list(@l4)
        @list_b.insert_list(@l3)
        @list_c.insert_list(@l3)
        @list_c.insert_list(@l2)
        
    end
    
        it "Autores distintos, ordenados por autores" do
            expect(@list_a.sort).to eq([@l2,@l1])
        end
        
        it "Autores iguales, ordenados por fechas" do
            expect(@list_c.sort).to eq([@l3,@l2])
        end
        
        it "Autores iguales y fechas iguales, ordenados por títulos" do
            expect(@list_b.sort).to eq([@l3,@l4])
        end
        
        it "Usando el formato de la Asociacion de Psicologica Americana (APA)" do
            expect(@l1.to_s).to eq("Autor/es: Thomas, D. TITULO: Programming Ruby 1.9 & 2.0 FECHA: (2013) EDICION: (1 Edicion) VOLUMEN: (2) LUGAR: Inglaterra")
            expect(@l2.to_s).to eq("Autor/es: Chacon, S. TITULO: Pro Git 2009th Edition FECHA: (2009) EDICION: (5 Edicion) VOLUMEN: (3) LUGAR: Inglaterra")
            expect(@l3.to_s).to eq("Autor/es: Chacon, S. TITULO: Ruby Programming Language FECHA: (2008) EDICION: (2 Edicion) VOLUMEN: (1) LUGAR: Inglaterra")
            expect(@l4.to_s).to eq("Autor/es: Chacon, S. TITULO: The RSpecBook: Behaviour Driven Development with RSpec FECHA: (2008) EDICION: (1 Edicion) VOLUMEN: (2) LUGAR: Inglaterra")
        end
        
    end
end
end
