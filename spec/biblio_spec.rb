require 'spec_helper'

describe Biblio do
    
    it 'has a version number' do
    expect(Biblio::VERSION).not_to be nil
    
    end
  
describe Bibliography do
    
   l1 = Biblio.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0","(The Facets of Ruby)","Pragmatic Bookshelf", "4 edition", "(July 7, 2013)",["ISBN-13: 978-1937785499", "ISBN-10:1937785491"])
   l2 = Biblio.new("Scott Chacon","Pro Git 2009th Edition","Apress","2009 edition","(August 27, 2009)",["ISBN-13: 978-1430218333. ISBN-10: 1430218339"])
   l3 = Biblio.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","O’Reilly Media","1 edition","(February4, 2008)",["ISBN-10: 0596516177. ISBN-13: 978-0596516178"])
   l4 = Biblio.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpecBook: Behaviour Driven Development with RSpec","Pragmatic Bookshelf","1 edition","(December 25, 2010)",["ISBN-10: 1934356379. ISBN-13: 978-1934356371"])
   l5 = Biblio.new("Richard E. Silverman","Git Pocket Guide","O’Reilly Media","1 edition","(August 2, 2013)(August 2, 2013)",["ISBN-10: 1449325866. ISBN-13: 978-1449325862"])
   
    describe Node do
       
    nodoa = Node.new(l1, nil)
    
    it "Existe un Nodo de la lista con sus datos y su siguiente" do
        expect(nodoa.value).to eq(l1)
        expect(nodoa.next).to eq(nil)   
    end
    end
    
=begin before :each do
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
=end
end
end
