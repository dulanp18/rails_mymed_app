# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prescription.delete_all
Consultation.delete_all
Doctor.delete_all
Patient.delete_all
User.delete_all
Medicine.delete_all



puts "Cleared previous seeds"

first_doctor = User.new(first_name: 'Nicholas', last_name: 'Barkolias', date_of_birth: DateTime.new(2009,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'nbarkolias@gmail.com', user_type: 'doctor')
first_doctor.save!
Doctor.create!(user: first_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic_string: 'Collins street, Melbourne')

first_patient = User.new(first_name: 'Nick', last_name: 'Barkolias', date_of_birth: DateTime.new(2009,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake@gmail.com', user_type: 'patient')
first_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user_id: first_patient.id)

panadol = Medicine.new(name:"Panadol", strength_of_medicine:"500mg", available_status:"Available", price_cents: 100, number_of_servings: 15, medicine_type: "tablet")
panadol.save!

imodium = Medicine.new(name:"Imodium", strength_of_medicine:"300mg", available_status:"Available", price_cents: 200, number_of_servings: 30, medicine_type: "tablet")
imodium.save!

neurofen = Medicine.new(name:"Neurofen", strength_of_medicine:"350mg", available_status:"Available", price_cents: 150, number_of_servings: 20, medicine_type: "tablet")
neurofen.save!

first_consultation = Consultation.new(doctor_id: first_doctor.doctor.id, patient_id: first_patient.patient.id)
first_consultation.save!


first_prescription = Prescription.new(amount_per_serving: "1", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: panadol.id, consultation_id: first_consultation.id)
first_prescription.price_cents = panadol.price_cents * (first_prescription.amount_per_serving * first_prescription.servings_per_day * first_prescription.number_of_days)
first_prescription.save!


puts "Seeded"
