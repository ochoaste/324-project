# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Adoptee.create!(name:  "Example User",
	     age: 100, 
             email: "example@railstutorial.org",
             personality: "Example", 
	     password:              "foobar",
             password_confirmation: "foobar")

50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  age = 100
  personality = "personality here" 
  Adoptee.create!(name:  name,
               email: email,
               age: age,
               personality: personality,
	       password:              password,
               password_confirmation: password)
end

