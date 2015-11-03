require "biblio/bibliography.rb"

describe Bibliography do
    
    before :each do
        @book = Bibliography.new("Dave Thomas")
    end
        
    describe "Book exists" do
        it "Author is correct"
        @book.author.should eq("Dave Thomas")
    end
end
