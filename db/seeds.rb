# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.delete_all
Order.delete_all
Prescription.delete_all
Consultation.delete_all
Doctor.delete_all
Patient.delete_all
User.delete_all
Medicine.delete_all



puts "Cleared previous seeds"

first_doctor = User.new(first_name: 'Nicholas', last_name: 'Barkolias', date_of_birth: DateTime.new(1980,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'nbarkolias@gmail.com', user_type: 'doctor')
first_doctor.save!
Doctor.create!(user: first_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

first_patient = User.new(first_name: 'Sofia', last_name: 'Sarhanis', date_of_birth: DateTime.new(1940,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'sofiasarhanis@gmail.com', user_type: 'patient')
first_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: first_patient)

second_doctor = User.new(first_name: 'Tom', last_name: 'Roberts', date_of_birth: DateTime.new(1970,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_2@gmail.com', user_type: 'doctor')
second_doctor.save!
Doctor.create!(user: second_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

second_patient = User.new(first_name: 'Patrick', last_name: 'Stewart', date_of_birth: DateTime.new(1980,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_2@gmail.com', user_type: 'patient')
second_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: second_patient)

third_doctor = User.new(first_name: 'Michael', last_name: 'Chan', date_of_birth: DateTime.new(1960,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_3@gmail.com', user_type: 'doctor')
third_doctor.save!
Doctor.create!(user: third_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

third_patient = User.new(first_name: 'Kate', last_name: 'Jackson', date_of_birth: DateTime.new(1970,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_3@gmail.com', user_type: 'patient')
third_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: third_patient)

fourth_doctor = User.new(first_name: 'Rob', last_name: 'Walters', date_of_birth: DateTime.new(2000,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_4@gmail.com', user_type: 'doctor')
fourth_doctor.save!
Doctor.create!(user: fourth_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

fourth_patient = User.new(first_name: 'Nat', last_name: 'Faxon', date_of_birth: DateTime.new(2000,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_4@gmail.com', user_type: 'patient')
fourth_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: fourth_patient)

fifth_doctor = User.new(first_name: 'Angelina', last_name: 'Jolie', date_of_birth: DateTime.new(1970,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_5@gmail.com', user_type: 'doctor')
fifth_doctor.save!
Doctor.create!(user: fifth_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

fifth_patient = User.new(first_name: 'Lili', last_name: 'Reinhart', date_of_birth: DateTime.new(1980,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_5@gmail.com', user_type: 'patient')
fifth_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: fifth_patient)

sixth_doctor = User.new(first_name: 'Renee', last_name: 'Zellweger', date_of_birth: DateTime.new(1990,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_6@gmail.com', user_type: 'doctor')
sixth_doctor.save!
Doctor.create!(user: sixth_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

sixth_patient = User.new(first_name: 'Chris', last_name: 'Pang', date_of_birth: DateTime.new(1980,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_6@gmail.com', user_type: 'patient')
sixth_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: sixth_patient)

seventh_doctor = User.new(first_name: 'Drew', last_name: 'Barrymore', date_of_birth: DateTime.new(2000,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_7@gmail.com', user_type: 'doctor')
seventh_doctor.save!
Doctor.create!(user: seventh_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

seventh_patient = User.new(first_name: 'Luis', last_name: 'Mendez', date_of_birth: DateTime.new(1980,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_7@gmail.com', user_type: 'patient')
seventh_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: seventh_patient)

eighth_doctor = User.new(first_name: 'Lucy', last_name: 'Liu', date_of_birth: DateTime.new(1970,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_8@gmail.com', user_type: 'doctor')
eighth_doctor.save!
Doctor.create!(user: eighth_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

eighth_patient = User.new(first_name: 'Sam', last_name: 'Claflin', date_of_birth: DateTime.new(1980,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_8@gmail.com', user_type: 'patient')
eighth_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: eighth_patient)

ninth_doctor = User.new(first_name: 'Cameron', last_name: 'Diaz', date_of_birth: DateTime.new(2000,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_9@gmail.com', user_type: 'doctor')
ninth_doctor.save!
Doctor.create!(user: ninth_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

ninth_patient = User.new(first_name: 'John', last_name: 'Tucker', date_of_birth: DateTime.new(1978,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_9@gmail.com', user_type: 'patient')
ninth_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: ninth_patient)

tenth_doctor = User.new(first_name: 'Tara', last_name: 'McNamara', date_of_birth: DateTime.new(2000,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_10@gmail.com', user_type: 'doctor')
tenth_doctor.save!
Doctor.create!(user: tenth_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

tenth_patient = User.new(first_name: 'Chloe', last_name: 'Kim', date_of_birth: DateTime.new(1980,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_10@gmail.com', user_type: 'patient')
tenth_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: tenth_patient)

eleventh_doctor = User.new(first_name: 'Kristen', last_name: 'Stewart', date_of_birth: DateTime.new(1960,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_11@gmail.com', user_type: 'doctor')
eleventh_doctor.save!
Doctor.create!(user: eleventh_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

eleventh_patient = User.new(first_name: 'Sarah', last_name: 'Bennani', date_of_birth: DateTime.new(1955,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_11@gmail.com', user_type: 'patient')
eleventh_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: eleventh_patient)

twelveth_doctor = User.new(first_name: 'Liz', last_name: 'Banks', date_of_birth: DateTime.new(1960,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_doctor_12@gmail.com', user_type: 'doctor')
twelveth_doctor.save!
Doctor.create!(user: twelveth_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

twelveth_patient = User.new(first_name: 'Livia', last_name: 'Matthes', date_of_birth: DateTime.new(1980,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake_patient_12@gmail.com', user_type: 'patient')
twelveth_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: twelveth_patient)



panadol = Medicine.new(name:"Panadol", strength_of_medicine:"500mg", available_status:"Available", price_cents: 20, number_of_servings: 15, medicine_type: "tablet")
panadol.save!

imodium = Medicine.new(name:"Imodium", strength_of_medicine:"300mg", available_status:"Available", price_cents: 50, number_of_servings: 30, medicine_type: "tablet")
imodium.save!

neurofen = Medicine.new(name:"Neurofen", strength_of_medicine:"350mg", available_status:"Available", price_cents: 30, number_of_servings: 20, medicine_type: "tablet")
neurofen.save!

panamax = Medicine.new(name:"Panamax", strength_of_medicine:"500mg", available_status:"Available", price_cents: 249, number_of_servings: 20, medicine_type: "tablet")
panamax.save!

probiotic = Medicine.new(name:"Probiotic", strength_of_medicine:"32billion", available_status:"Available", price_cents: 30, number_of_servings: 60, medicine_type: "tablet")
probiotic.save!

fish_oil = Medicine.new(name:"Fish Oil", strength_of_medicine:"1000mg", available_status:"Available", price_cents: 25, number_of_servings: 400, medicine_type: "tablet")
fish_oil.save!

zyrtec_allergy = Medicine.new(name:"Zyrtech", strength_of_medicine:"100mg", available_status:"Available", price_cents: 40, number_of_servings: 70, medicine_type: "tablet")
zyrtec_allergy.save!

claratyne_allergy = Medicine.new(name:"Claratyne", strength_of_medicine:"100mg", available_status:"Available", price_cents: 2999, number_of_servings: 75, medicine_type: "tablet")
claratyne_allergy.save!

gaviscon = Medicine.new(name:"Gaviscon Liquid Dual Action", strength_of_medicine:"600ml", available_status:"Available", price_cents: 20, number_of_servings: 50, medicine_type: "syrup")
gaviscon.save!

nurofen_for_children = Medicine.new(name:"Nurofen for Children", strength_of_medicine:"100mg", available_status:"Available", price_cents: 30, number_of_servings: 50, medicine_type: "syrup")
nurofen_for_children.save!

valerian = Medicine.new(name:"Valerian", strength_of_medicine:"400mg", available_status:"Available", price_cents: 15, number_of_servings: 10, medicine_type: "tablet")
valerian.save!

angellica = Medicine.new(name:"Amoxicillin", strength_of_medicine:"100mg", available_status:"Available", price_cents: 20, number_of_servings: 10, medicine_type: "tablet")
angellica.save!

atlantic_cedar = Medicine.new(name:"Atlantic Cedar", strength_of_medicine:"500mg", available_status:"Available", price_cents: 80, number_of_servings: 10, medicine_type: "tablet")
atlantic_cedar.save!

bees_wax = Medicine.new(name:"Pantoprazole", strength_of_medicine:"100mg", available_status:"Available", price_cents: 20, number_of_servings: 50, medicine_type: "tablet")
bees_wax.save!

black_nightshade = Medicine.new(name:"Black Night Shade", strength_of_medicine:"500mg", available_status:"Available", price_cents: 15, number_of_servings: 50, medicine_type: "tablet")
black_nightshade.save!

simaruba = Medicine.new(name:"Rosuvastatin", strength_of_medicine:"100mg", available_status:"Available", price_cents: 20, number_of_servings: 50, medicine_type: "syrup")
simaruba.save!

verbena = Medicine.new(name:"Esomeprazole", strength_of_medicine:"400mg", available_status:"Available", price_cents: 25, number_of_servings: 10, medicine_type: "tablet")
verbena.save!

xanthoparmelia = Medicine.new(name:"Xanthoparmelia", strength_of_medicine:"100mg", available_status:"Available", price_cents: 30, number_of_servings: 10, medicine_type: "tablet")
xanthoparmelia.save!

yellow_toadflax = Medicine.new(name:"Yellow toadflax", strength_of_medicine:"500mg", available_status:"Available", price_cents: 35, number_of_servings: 10, medicine_type: "tablet")
yellow_toadflax.save!

yucca = Medicine.new(name:"Atorvastatin", strength_of_medicine:"100mg", available_status:"Available", price_cents: 30, number_of_servings: 50, medicine_type: "tablet")
yucca.save!


first_consultation = Consultation.new(doctor: first_doctor.doctor, patient: first_patient.patient)
first_consultation.save!

first_prescription = Prescription.new(amount_per_serving: "1", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: panadol.id, consultation_id: first_consultation.id)
first_prescription.price_cents = panadol.price_cents * (first_prescription.amount_per_serving * first_prescription.servings_per_day * first_prescription.number_of_days)
first_prescription.save!


second_prescription = Prescription.new(amount_per_serving: "2", servings_per_day: 3, number_of_days: 4, comment: "take before bed", medicine_id: imodium.id, consultation_id: first_consultation.id)
second_prescription.price_cents = imodium.price_cents * (second_prescription.amount_per_serving * second_prescription.servings_per_day * second_prescription.number_of_days)
second_prescription.save!

third_consultation = Consultation.new(doctor: first_doctor.doctor, patient: first_patient.patient)
third_consultation.save!

third_prescription = Prescription.new(amount_per_serving: "3", servings_per_day: 3, number_of_days: 4, comment: "take in the morning", medicine_id: neurofen.id, consultation_id: third_consultation.id)
third_prescription.price_cents = neurofen.price_cents * (third_prescription.amount_per_serving * third_prescription.servings_per_day * third_prescription.number_of_days)
third_prescription.save!

fourth_consultation = Consultation.new(doctor: second_doctor.doctor, patient: second_patient.patient)
fourth_consultation.save!

fourth_prescription = Prescription.new(amount_per_serving: "2", servings_per_day: 3, number_of_days: 4, comment: "take with food", medicine_id: zyrtec_allergy.id, consultation_id: fourth_consultation.id)
fourth_prescription.price_cents = zyrtec_allergy.price_cents * (fourth_prescription.amount_per_serving * fourth_prescription.servings_per_day * fourth_prescription.number_of_days)
fourth_prescription.save!

fifth_prescription = Prescription.new(amount_per_serving: "2", servings_per_day: 3, number_of_days: 4, comment: "take when stomach hurts", medicine_id: gaviscon.id, consultation_id: fourth_consultation.id)
fifth_prescription.price_cents = gaviscon.price_cents * (fifth_prescription.amount_per_serving * fifth_prescription.servings_per_day * fifth_prescription.number_of_days)
fifth_prescription.save!

sixth_consultation = Consultation.new(doctor: second_doctor.doctor, patient: second_patient.patient)
sixth_consultation.save!

sixth_prescription = Prescription.new(amount_per_serving: "3", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: valerian.id, consultation_id: sixth_consultation.id)
sixth_prescription.price_cents = valerian.price_cents * (sixth_prescription.amount_per_serving * sixth_prescription.servings_per_day * sixth_prescription.number_of_days)
sixth_prescription.save!

seventh_consultation = Consultation.new(doctor: first_doctor.doctor, patient: first_patient.patient)
seventh_consultation.save!

seventh_prescription = Prescription.new(amount_per_serving: "2", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: angellica.id, consultation_id: seventh_consultation.id)
seventh_prescription.price_cents = angellica.price_cents * (seventh_prescription.amount_per_serving * seventh_prescription.servings_per_day * seventh_prescription.number_of_days)
seventh_prescription.save!

eight_consultation = Consultation.new(doctor: first_doctor.doctor, patient: second_patient.patient)
eight_consultation.save!

eight_prescription = Prescription.new(amount_per_serving: "2", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: simaruba.id, consultation_id: eight_consultation.id)
eight_prescription.price_cents = simaruba.price_cents * (eight_prescription.amount_per_serving * eight_prescription.servings_per_day * eight_prescription.number_of_days)
eight_prescription.save!

ninth_consultation = Consultation.new(doctor: first_doctor.doctor, patient: second_patient.patient)
ninth_consultation.save!

ninth_prescription = Prescription.new(amount_per_serving: "1", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: yucca.id, consultation_id: ninth_consultation.id)
ninth_prescription.price_cents = yucca.price_cents * (ninth_prescription.amount_per_serving * ninth_prescription.servings_per_day * ninth_prescription.number_of_days)
ninth_prescription.save!

tenth_consultation = Consultation.new(doctor: first_doctor.doctor, patient: third_patient.patient)
tenth_consultation.save!

tenth_prescription = Prescription.new(amount_per_serving: "2", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: verbena.id, consultation_id: tenth_consultation.id)
tenth_prescription.price_cents = verbena.price_cents * (tenth_prescription.amount_per_serving * tenth_prescription.servings_per_day * tenth_prescription.number_of_days)
tenth_prescription.save!

puts "Seeded"
