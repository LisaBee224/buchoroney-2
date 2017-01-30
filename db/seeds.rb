# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Party.create(party_name: "Buch")
Party.create(party_name: "Goodman")
Party.create(party_name: "Speck")

Guest.create(first_name: "Lisa", last_name: "Buch", email: "lisakbuch@gmail.com", party_id:1, meal_id:1)
Guest.create(first_name:"hey", last_name:"Yo", email: "yo@yo.com", party_id:1,meal_id:1)
Guest.create(first_name: "David", last_name: "Moroney", email: "dave@dave.com", party_id:3)
Guest.create(first_name: "Kylie", last_name:"Minogue", email: "keylie@key.com", party_id:3)

Meal.create(desc: "ice cream")
Meal.create(desc: "fish pie")
Meal.create(desc: "bubblegum")
