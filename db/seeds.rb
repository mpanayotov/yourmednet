# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'admin@gmail.com', name: 'John', password: 'admin')
DoctorProfile.create(specialty: 'Dentist', user: user)
MedCase.create(title: 'Cavity Problem', description: 'Lorem ipsum', author: user)