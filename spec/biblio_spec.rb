require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe  Bibliography do
    
    before :each do
        
        @book = Bibliography.new(["Dave Thomas","Andy Hunt","Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide","July 7 2013","Pragmatic Bookshelf",["1937785491","978-1937785499"],"4"," ")
    end
    
    it "Author is correct" do
        expect(@book.author).to eq(["Dave Thomas","Andy Hunt","Chad Fowler"])
    end
   
    it "Title is correct" do
        expect(@book.title).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide")
    end
    
    it "Date is correct" do
        expect(@book.date).to eq("July 7 2013")
    end
    
    it "Editorial is correct" do
        expect(@book.editorial).to eq("Pragmatic Bookshelf")
    end
    
    it "Isbn is correct" do
        expect(@book.isbn10).to eq(["1937785491","978-1937785499"])
    end
  
    
    
        it "Edition number is correct" do
            expect(@book.edition).to eq("4")
        end
    
    
   
        it "Series number is correct" do
            expect(@book.series).to eq(" ")
        end
    


      
        it "correct" do
        expect(@book.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\n Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n Pragmatic Bookshelf; 4 July 7 2013\n 1937785491, 978-1937785499\n" )

        end
    end


end
