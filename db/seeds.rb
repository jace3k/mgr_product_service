# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

electronics = (1..300).map { |id|
  {
    name: Faker::Appliance.equipment,
    category: "Electronics",
    price: rand(50.5..10000.0).round(2),
  }
}

food = (1..300).map { |id|
  {
    name: Faker::Food.dish,
    category: "Food",
    price: rand(1.5..500.0).round(2),
  }
}

beer = (1..300).map { |id|
  {
    name: Faker::Beer.name,
    category: "Beer",
    price: rand(1.5..50.0).round(2),
  }
}

furnitures = (1..100).map { |id|
  {
    name: Faker::House.furniture,
    category: "Furnitures",
    price: rand(300.5..50000.0).round(2),
  }
}

[
  electronics,
  food,
  beer,
  furnitures,
].each { |set| Product.create(set) }
