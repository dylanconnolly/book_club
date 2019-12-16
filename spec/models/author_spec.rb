require 'rails_helper'

RSpec.describe Author do
  describe "relationships" do
    it { should have_many :author_books }
    it { should have_many(:books).through(:author_books) }
  end

  describe "validations" do
    it {should validate_presence_of :name}
  end

  describe "#average_pages method" do
    it "calculates the average pages for all that author's books" do
      bob = Author.create(name: "Bob")

      book1 = Book.create!(title: "Interesting Topic", pages: 40, publication_year: "2008")
      book2 = Book.create!(title: "Moderately Engaging Topic", pages: 80, publication_year: "2000")
      book3 = Book.create!(title: "Terrible Topic", pages: 120, publication_year: "1950")

      bob.books << book1
      bob.books << book2

      expect(bob.average_pages).to eq(60)

      bob.books << book3

      expect(bob.average_pages).to eq(80)
    end
  end

end
