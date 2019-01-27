# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Dog.destroy_all


#User.destroy_all

#20.times do |i|
   #u = User.create!(
     #name: "Persona#{i + 1}",
     #email: "Persona#{i + 1}@gmail.com",
     #password: "1234567"
   #)
   3.times do |i|
     Dog.create!(name: "Perro#{i + 1}", photo: open('https://loremflickr.com/320/240/dog'), age: '3', description: "El perro#{i + 1} es el mejor perro del mundo, amnimate a conocerlo")
   end
