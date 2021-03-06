# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

50.times do
  Book.create(
    title: Faker::Book.title,
    release_date: Faker::Date.backward(750),
    base_price: Faker::Number.decimal(2),
    format_id: Faker::Number.between(1, 3)
  )

  50.times do
    Author.create(
      first_name: Faker::Name.first_name
      last_name: Faker::Name.last_name  
    )
end
