# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = Author.create(name: "Bob")
steve = Author.create(name: "Steve")

book1 = Book.create!(title: "Interesting Topic", pages: 40, publication_year: "2008")
book2 = Book.create!(title: "Moderately Engaging Topic", pages: 80, publication_year: "2000")
book3 = Book.create!(title: "Terrible Topic", pages: 2000, publication_year: "1950")

bob.books << book1
bob.books << book3
steve.books << book2
steve.books << book3
