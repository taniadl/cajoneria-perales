# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cajon.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Client.destroy_all if Rails.env.development?


p "destroy outdated data"

huayco = Cajon.create( {
  name: "huayco" ,
   price: 12 }
   )

fresa = Cajon.create( {
  name: "fresa" ,
   price: 12 }
   )

huayco = Cajon.create( {
  name: "cuadrada" ,
   price: 12 }
   )

huayco = Cajon.create( {
  name: "pepinera" ,
   price: 12 }
   )

Carola = User.create({
  first_name: "Carola",
  last_name: "Santos Pajuelo",
  email: "carola@gmail.com",
  password: "123456"
})

Silverio = User.create({
  first_name: "Silverio",
  last_name: "Perales Garay",
  email: "silverio@gmail.com",
  password: "123456"
})

p "created 2 users"

Client.create({
  first_name: "Nick",
  last_name: "Jonas",
  user: Carola
})

Client.create({
  first_name: "Kevin",
  last_name: "Jonas",
  user: Silverio


})
 p "created 2 clients"


puts 'four cajons created'
