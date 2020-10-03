# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.delete_all
Patient.delete_all
User.delete_all

puts "deleted previous"

first_doctor = User.new(first_name: 'Nicholas', last_name: 'Barkolias', date_of_birth: DateTime.new(2009,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'nbarkolias@gmail.com', user_type: 'doctor')
first_doctor.save!
Doctor.create!(user: first_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic_string: 'Collins street, Melbourne')

first_patient = User.new(first_name: 'Nick', last_name: 'Barkolias', date_of_birth: DateTime.new(2009,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake@gmail.com', user_type: 'patient')
first_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: first_patient)

puts "seeded"
