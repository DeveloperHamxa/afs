# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = [
    {name: "Business"},
    {name: "Electronics"},
    {name: "Books"},
    {name: "Accessories"},
    {name: "Health and Personal Care"},
    {name: "Food and Beverage"},
    {name: "Supplies"},
    {name: "Furniture"},
    {name: "Jewelry"},
]

Category.bulk_insert values: categories if Category.count.zero?
