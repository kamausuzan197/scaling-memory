# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Laundry.create(title: "Basic",variety: "cotton", price: 300)
Laundry.create(title: "Standard",variety: "silk", price: 500)
Laundry.create(title: "Classic",variety: "lather", price: 100)
Laundry.create(title: "Basic",variety: "cotton", price: 450)
Review.create(comments: "i love how the clothers were ironed after washing",order_number:1, laundry_id:1, user_id:1)
Review.create(comments: "i wish youy guys would offer free delivere too",order_number:2, laundry_id:2, user_id:2)
Review.create(comments: "i love how the clothers were ironed after washing",order_number:3, laundry_id:3, user_id:3)
Review.create(comments: "i love how the clothers were ironed after washing",order_number:4, laundry_id:4, user_id:4)
User.create(name: "susan",password:"ken123")
User.create(name: "victor",password: "tepela2224")
User.create(name: "chemoges",password: "suzan254")
User.create(name: "maurice",password: "alean1010")
