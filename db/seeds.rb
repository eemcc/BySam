# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Comment.delete.all
Product.delete_all
Order.delete_all

p1 = Product.create(name: "Monkeys Fist Earrings", description: "knotted black earrings", image_url:"blackearrings.jpg", color: "black",
price:"20")
p2 = Product.create(name: "Monkeys Fist Earrings", description: "knotted blue multicolored earrings", image_url:"bluemultimonkeyfist.jpg", color: "blue",
price:"20")
p3 = Product.create(name: "Monkeys Fist Earrings", description: "knotted purple multicolored earrings", image_url:"purplemultimonkeysfist.jpg", color: "purple",
price:"20")
p4 = Product.create(name: "Monkeys Fist Earrings", description: "knotted white earrings", image_url:"whitemonkeysfist.jpg", color: "white",
price:"20")

Order.create(user_id: User.first.id, product_id: p1.id, total:20)
Order.create(user_id: User.first.id, product_id: p2.id, total:20)
Order.create(user_id: User.first.id, product_id: p3.id, total:20)
Order.create(user_id: User.first.id, product_id: p4.id, total:20)

c1 = Comment.create(product_id: "Black Monkeys Fist Earrings", User.first.id:1, body: "Not good", rating: 1)
c2 = Comment.create(product_id: "White Monkeys Fist Earrings", User.first.id:1, body: "Great for everything!", rating: 5)
c3 = Comment.create(product_id: "Purple Monkeys Fist Earrings", User.first.id:1, body: "Good", rating: 4)
c4 = Comment.create(product_id: "Black Monkeys Fist Earrings", User.first.id:1, body: "OK", rating: 2)
