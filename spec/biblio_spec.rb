require 'biblio/bibliography.rb'
require 'spec_helper'

describe Bibliography do
    
    before :each do
        @book = Bibliography.new(["Dave Thomas","Andy Hunt","Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide","July 7 2013","Pragmatic Bookshelf",["1937785491","978-1937785499"],"4"," ")
    end
        
    describe "Book exists" do
        it "Author is incorrect" do
            @book.author.should eq(["Dave Thomas","Andy Hunt","Chad Fowler"])
            
        end
    end
    
    describe "Book exists" do
        it "Title is incorrect" do
            @book.title.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide")
        end
    end
    
    describe "Book exists" do
        it "Date is incorrect" do
            @book.date.should eq("July 7 2013")
        end
    end
    
    describe "Book exists" do
        it "Editorial is incorrect" do
            @book.editorial.should eq("Pragmatic Bookshelf")
        end
    end
    
    describe "Book exists" do
        it "Isbn is incorrect" do
            @book.isbn10.should eq(["1937785491","978-1937785499"])
        end
    end
    
    describe "Book exists" do
        it "Edition number is incorrect" do
            @book.edition.should eq("4")
        end
    end
    
    describe "Book exists" do
        it "Series number is incorrect" do
            @book.series.should eq(" ")
        end
    end
    

      describe "Formatted Reference" do
        it "Incorrect" do
        @book.to_s.should eq("Dave Thomas, Andy Hunt, Chad Fowler\n Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n Pragmatic Bookshelf; 4 July 7 2013\n 1937785491, 978-1937785499\n" )

        end
    end


end
