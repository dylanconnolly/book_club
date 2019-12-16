require 'rails_helper'

RSpec.describe "book index page" do
  it "displays each book with their attributes" do
    bob = Author.create(name: "Bob")
    steve = Author.create(name: "Steve")

    book1 = Book.create!(title: "Interesting Topic", pages: 40, publication_year: "2008")
    book2 = Book.create!(title: "Moderately Engaging Topic", pages: 80, publication_year: "2000")
    book3 = Book.create!(title: "Terrible Topic", pages: 2000, publication_year: "1950")

    bob.books << book1
    bob.books << book3
    steve.books << book2
    steve.books << book3

    visit '/books'

    within "#book-#{book1.id}" do
      expect(page).to have_content(book1.title)
      expect(page).to have_content(book1.pages)
      expect(page).to have_content(book1.publication_year)
      expect(page).to have_content(bob.name)
      expect(page).to_not have_content(book2.title)
      expect(page).to_not have_content(book3.title)
    end

    within "#book-#{book2.id}" do
      expect(page).to have_content(book2.title)
      expect(page).to have_content(book2.pages)
      expect(page).to have_content(book2.publication_year)
      expect(page).to have_content(steve.name)
    end

    within "#book-#{book3.id}" do
      expect(page).to have_content(book3.title)
      expect(page).to have_content(book3.pages)
      expect(page).to have_content(book3.publication_year)
      expect(page).to have_content(bob.name)
      expect(page).to have_content(steve.name)
    end
  end
end
