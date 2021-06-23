# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "destroying users"
User.destroy_all
p "users destroyed"

p "destroying housings"
Housing.destroy_all
p "housings destroyed"

youri = User.create(first_name: 'Youri', last_name: "MG", email:'youri@email.com', password:'123456')
audrey = User.create(first_name: 'Audrey', last_name: "Gonera",  email:'audrey@email.com', password:'123456')
aymeric = User.create(first_name: 'Aymeric', last_name: "Bonnaud", email:'aymeric@email.com', password:'123456')
p "#{User.count} users created"
