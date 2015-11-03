require 'biblio/bibliography.rb'
require 'spec_helper'

describe Bibliography do
    
    before :each do
        @book = Bibliography.new("Author")
    end
        
    describe "Book exists" do
        it "Author is correct" do
            @book.author.should eq("Author")
            
        end
    end
    
    describe "Book exists" do
        it "Tittle is correct" do
            @book.tittle.should eq("Tittle")
        end
    end
end
