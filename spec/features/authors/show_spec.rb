require 'rails_helper'

RSpec.describe "author show page" do
  it "displays author's attributes" do
    bob = Author.create(name: "Bob")
    steve = Author.create(name: "Steve")

    book1 = Book.create!(title: "Interesting Topic", pages: 40, publication_year: "2008")
    book2 = Book.create!(title: "Moderately Engaging Topic", pages: 80, publication_year: "2000")
    book3 = Book.create!(title: "Terrible Topic", pages: 2000, publication_year: "1950")

    bob.books << book1
    bob.books << book3
    steve.books << book2
    steve.books << book3

    
  end
end
