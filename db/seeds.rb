# authors = [
#     {name: "Sir Remy"},
#     {name: "Miss Dalek"},
#     {name: "Penny Lane"},
#     {name: "Zoe Hunts"},
#     {name: "Lucy pants"},
#   ]

#   authors.each do |author|
#     Author.create!(name: author[:name])
#   end

#   books = [
#     { title: "All About Dogs",
#       description: "A dog is a mammal in the order Carnivora. Dogs were domesticated from wolves as recently as 15,000 years ago.",
#       price: 15.99
#     },
#     { title: "Dogs Are Life",
#       description: "It is estimated that for more than 12,000 years the dog has lived with humans as a hunting companion, protector and friend. A dog is one of the most popular pets in the world and has been referred to as 'mans best friend'.",
#       price: 25.99
#     }
#   ]

#   books.each do |book_attrs|
#     book = Book.new(book_attrs)
#     book.cover.attach(io: File.open(Rails.root.join('public/doge.png')), filename:"doge.png")
#     book.save!
#   end
require 'faker'

books = 10.times do
  book = Book.create(title: Faker::Book.title)
  book.cover.attach(io: File.open(Rails.root.join('public/doge.png')), filename:"doge.png")
  book.save!
end

authors = 10.times do
  Author.create(
    name: Faker::Name.name,
    books: [Book.all.sample] # grab a random company
  )
end
