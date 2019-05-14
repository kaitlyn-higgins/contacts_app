# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


contact = Contact.create(first_name: "Amber", last_name: "Hamilton", email: "amham@gmail.com", phone_number: "312-434-5678",
  birthday: "2/22")
  
contact = Contact.create(first_name: "Mia", last_name: "McConahey", email: "MiaMchey.com", phone_number: "312-434-5632",
  birthday: "4/12")

contact = Contact.create(first_name: "Ashley", last_name: "Ramsey", email: "Ashrams@gmail.com", phone_number: "312-434-5289",
  birthday: "1/3")