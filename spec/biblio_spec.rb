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
        
        it "Autores iguales y fechas iguales, ordenados por titulos" do
            expect(@list_b.sort).to eq([@l3,@l4])
        end
        
        it "Usando el formato de la Asociacion de Psicologica Americana (APA) en libros" do
            expect(@l1.to_s).to eq("Autor/es: Thomas, D. Titulo: Programming Ruby 1.9 & 2.0 Fecha: (2013) Edicion: (1 Edicion) Volumen: (2) Lugar de publicacion: Inglaterra")
            expect(@l2.to_s).to eq("Autor/es: Chacon, S. Titulo: Pro Git 2009th Edition Fecha: (2009) Edicion: (5 Edicion) Volumen: (3) Lugar de publicacion: Inglaterra")
            expect(@l3.to_s).to eq("Autor/es: Chacon, S. Titulo: Ruby Programming Language Fecha: (2008) Edicion: (2 Edicion) Volumen: (1) Lugar de publicacion: Inglaterra")
            expect(@l4.to_s).to eq("Autor/es: Chacon, S. Titulo: The RSpecBook: Behaviour Driven Development with RSpec Fecha: (2008) Edicion: (1 Edicion) Volumen: (2) Lugar de publicacion: Inglaterra")
        end
        
        context "Las pruebas de los articulos" do
            
            before :each do
            @a1 = Articulo.new("La Espanya que queremos","Castejon, P. S.","(El Pais)","(2015)","(1)","Opinion")
            @a2 = Articulo.new("Asi es como malgastas energia (y dinero) en la cocina","Femmine, L. D.","(El Pais)","(2013)","(2)","Columna")
            @a3 = Articulo.new("El Prado alcanza su cumbre digital","Castejon, P. S.","(El Pais)","(2010)","(1)","Opinion")
            @a4 = Articulo.new("La justicia deportiva mantiene la suspension a Platini","Castejon, P. S.","(El Pais)","(2010)","(2)","Articulo")

            @list_a = List.new()
            @list_b = List.new()
            @list_c = List.new()
            
            @list_a.insert_list(@a1)
            @list_a.insert_list(@a2)
            @list_b.insert_list(@a1)
            @list_b.insert_list(@a4)
            @list_c.insert_list(@a1)
            @list_c.insert_list(@a3)
        end
         
        it "Autores distintos, ordenados por autores" do
            expect(@list_a.sort).to eq([@a1,@a2])
        end
        
        it "Autores iguales, ordenados por fechas" do
            expect(@list_c.sort).to eq([@a3,@a1])
        end
         
        it "Autores iguales y fechas iguales, ordenados por titulos" do
            expect(@list_b.sort).to eq([@a3,@a4])
        end
        
        it "Usando el formato de la Asociacion de Psicologica Americana (APA) en articulos" do
            expect(@a1.to_s).to eq("Autor/es: Castejon, P. S. Titulo: La Espanya que queremos Fecha: (El Pais) Editor: (2015) Paginas: (1) Obra: Opinion")
            expect(@a2.to_s).to eq("Autor/es: Femmine, L. D. Titulo: Asi es como malgastas energia (y dinero) en la cocina Fecha: (El Pais) Editor: (2013) Paginas: (2) Obra: Columna")
            expect(@a3.to_s).to eq("Autor/es: Castejon, P. S. Titulo: El Prado alcanza su cumbre digital Fecha: (El Pais) Editor: (2010) Paginas: (1) Obra: Opinion")
            expect(@a4.to_s).to eq("Autor/es: Castejon, P. S. Titulo: La justicia deportiva mantiene la suspension a Platini Fecha: (El Pais) Editor: (2010) Paginas: (2) Obra: Articulo")
        end
        
    end
end
end
end