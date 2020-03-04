# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_one = Product.new({
  name: "Product 1",
  price: 2.00,
  image_url: "http://www.example.com/product_1",
  description: "A beautiful product filled with value and history",
})

product_one.save

product_two = Product.new({
  name: "Product 2",
  price: 1.00,
  image_url: "http://www.example.com/product_2",
  description: "A terrible product that we haven't managed to sell in 30 years",
})

product_two.save

product_three = Product.new({
  name: "Product 3",
  price: 5.00,
  image_url: "http://www.example.com/product_3",
  description: "The best product we have ever sold, hands down",
})

product_three.save
