# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OwnedCajon.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Client.destroy_all if Rails.env.development?
Cajon.destroy_all if Rails.env.development?
Calcu.destroy_all if Rails.env.development?

p "destroy outdated data"

Carola = User.create({
  first_name: "Carola",
  last_name: "Santos Pajuelo",
  email: "carola@gmail.com",
  password: "123456",
})

Silverio = User.create({
  first_name: "Silverio",
  last_name: "Perales Garay",
  email: "silverio@gmail.com",
  password: "123456",
})

p "created 2 users"

calnam = Calcu.create ({
  name: "Firulais",
  user: User.all.sample
    })

p "created calcu"

huayco = OwnedCajon.create( {
  name: "huayco" ,
   price: 12,
   user: Silverio
})

fresa = OwnedCajon.create( {
  name: "fresa" ,
   price: 12,
   user: Carola
})

huayco = OwnedCajon.create( {
  name: "cuadrada" ,
   price: 12,
   user: Carola
})

huayco = OwnedCajon.create( {
  name: "pepinera" ,
   price: 12,
   user: Silverio
})

p "Create 4 ownedcajons"

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


 Cajon.create ({
  name: "Fresa",
  price: 0.5,
  calcu: calnam
})

 Cajon.create ({
  name: "cuadrada",
  price: 0.8,
  calcu: calnam
})

 Cajon.create ({
  name: "huayco",
  price: 0.3,
})

 Cajon.create ({
  name: "pepinera",
  price: 0.5,
  calcu: calnam

})

 Cajon.create ({
  name: "melocoton",
  price: 1,
  calcu: calnam

})

 Cajon.create ({
  name: "piña",
  price: 0.1,
  calcu: calnam
})

 Cajon.create ({
  name: "uva",
  price: 1.4,
  calcu: calnam

})

 Cajon.create ({
  name: "rocoto",
  price: 1.3,
  calcu: calnam
})

p "created 8 cajons"
