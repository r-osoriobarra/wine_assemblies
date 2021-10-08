# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#destroy all
Strain.destroy_all
User.destroy_all
Admin.destroy_all
Magazine.destroy_all
Enologist.destroy_all

#Users
User.create(email: 'test@mail.com', password: '123123', password_confirmation: '123123')
Admin.create(email: 'peter@mail.com', password: '123123', password_confirmation: '123123')

#Strains
Strain.create(name: 'Sauvignon blanc')
Strain.create(name: 'Chardonnay')
Strain.create(name: 'Cabernet Sauvignon')
Strain.create(name: 'Merlot')
Strain.create(name: 'Carmenere')
Strain.create(name: 'Syrah')
Strain.create(name: 'Pinot Noir')

#Magazines
Magazine.create(name: 'La petaquita')
Magazine.create(name: 'Wines&Cheese')
Magazine.create(name: 'Combinado Internacional')

#Enologists
Enologist.create(name: 'Juan Manriquez', age: 21, nationality: 'Chile')
Enologist.create(name: 'Antonio Margarette', age: 80, nationality: 'Italia')
Enologist.create(name: 'Patrick Viera', age: 56, nationality: 'Francia')