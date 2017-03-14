# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Category.destroy_all

c = Category.create(name: "Teléfono")
Product.create(name: "Galaxy 6", stock: 10, category: c)
Product.create(name: "Galaxy 5", stock: 5, category: c)
Product.create(name: "Iphone 6", stock: 10, category: c)


c = Category.create(name: "Notebooks")
Product.create(name: "Macbook Pro", stock: 20, category: c)