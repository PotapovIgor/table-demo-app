# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!(email: "example@edgecsv.org",
             password:              "foobar",
             password_confirmation: "foobar")

10.times do |n|
  email = "example-#{n+1}@edgecsv.org"
  password = "password"
  User.create!(email: email,
               password:              password,
               password_confirmation: password)
end

Customer.create!(name:"Example name",
  email: "example@edgecsv.org")

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@edgecsv.org"
  Customer.create!(name:  name,
               email: email)
end

Product.create!(title:  "Example Name",
                 price: 42)

10.times do
  title  = Faker::Pokemon.name
  price = 42
  Product.create!(title: title,
                   price: price)
end