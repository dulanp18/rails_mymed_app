# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.delete_all
Prescription.delete_all
Consultation.delete_all
Doctor.delete_all
Patient.delete_all
User.delete_all
Medicine.delete_all



puts "Cleared previous seeds"

first_doctor = User.new(first_name: 'Nicholas', last_name: 'Barkolias', date_of_birth: DateTime.new(2009,9,1,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'nbarkolias@gmail.com', user_type: 'doctor')
first_doctor.save!
Doctor.create!(user: first_doctor, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic: 'Collins street, Melbourne')

first_patient = User.new(first_name: 'Nick', last_name: 'Barkolias', date_of_birth: DateTime.new(1989,12,2,17), contact_number: '0411332270', password: 'password', nationality: 'Australian', email: 'fake@gmail.com', user_type: 'patient')
first_patient.save!
Patient.create!(home_address: '17 milton road', allergies: 'none', user: first_patient)

panadol = Medicine.new(name:"Panadol", strength_of_medicine:"500mg", available_status:"Available", price_cents: 20, number_of_servings: 15, medicine_type: "tablet")
panadol.save!

imodium = Medicine.new(name:"Imodium", strength_of_medicine:"300mg", available_status:"Available", price_cents: 50, number_of_servings: 30, medicine_type: "tablet")
imodium.save!

neurofen = Medicine.new(name:"Neurofen", strength_of_medicine:"350mg", available_status:"Available", price_cents: 30, number_of_servings: 20, medicine_type: "tablet")
neurofen.save!

panamax = Medicine.new(name:"Panamax", strength_of_medicine:"500mg", available_status:"Available", price_cents: 249, number_of_servings: 20, medicine_type: "tablet")
panamax.save!

probiotic = Medicine.new(name:"Probiotic", strength_of_medicine:"32billion", available_status:"Available", price_cents: 2999, number_of_servings: 60, medicine_type: "tablet")
probiotic.save!

fish_oil = Medicine.new(name:"Fish Oil", strength_of_medicine:"1000mg", available_status:"Available", price_cents: 1299, number_of_servings: 400, medicine_type: "tablet")
fish_oil.save!

zyrtec_allergy = Medicine.new(name:"Zyrtech Allergy and Hayfever", strength_of_medicine:"100mg", available_status:"Available", price_cents: 2999, number_of_servings: 70, medicine_type: "tablet")
zyrtec_allergy.save!

claratyne_allergy = Medicine.new(name:"Claratyne Hayfever and Allergy Relief Antihistamine", strength_of_medicine:"100mg", available_status:"Available", price_cents: 2999, number_of_servings: 75, medicine_type: "tablet")
claratyne_allergy.save!

gaviscon = Medicine.new(name:"Gaviscon Liquid Dual Action", strength_of_medicine:"600ml", available_status:"Available", price_cents: 1299, number_of_servings: 50, medicine_type: "syrup")
gaviscon.save!

nurofen_for_children = Medicine.new(name:"Nurofen for Children", strength_of_medicine:"100mg", available_status:"Available", price_cents: 1599, number_of_servings: 50, medicine_type: "syrup")
nurofen_for_children.save!

valerian = Medicine.new(name:"valerian for sleep disorders", strength_of_medicine:"400mg", available_status:"Available", price_cents: 1199, number_of_servings: 10, medicine_type: "tablet")
valerian.save!

angellica = Medicine.new(name:"angellica for heartburn", strength_of_medicine:"100mg", available_status:"Available", price_cents: 1299, number_of_servings: 10, medicine_type: "tablet")
angellica.save!

atlantic_cedar = Medicine.new(name:"Atlantic Cedar for hair loss", strength_of_medicine:"500mg", available_status:"Available", price_cents: 2299, number_of_servings: 10, medicine_type: "tablet")
atlantic_cedar.save!

bees_wax = Medicine.new(name:"Bees Wax for cholestrol control", strength_of_medicine:"100mg", available_status:"Available", price_cents: 1299, number_of_servings: 50, medicine_type: "tablet")
bees_wax.save!

black_nightshade = Medicine.new(name:"Black Night Shade for pain", strength_of_medicine:"500mg", available_status:"Available", price_cents: 2299, number_of_servings: 50, medicine_type: "tablet")
black_nightshade.save!

simaruba = Medicine.new(name:"Simaruba for water retention", strength_of_medicine:"100mg", available_status:"Available", price_cents: 1599, number_of_servings: 50, medicine_type: "syrup")
simaruba.save!

verbena = Medicine.new(name:"Verbena for sore throat", strength_of_medicine:"400mg", available_status:"Available", price_cents: 1199, number_of_servings: 10, medicine_type: "tablet")
verbena.save!

xanthoparmelia = Medicine.new(name:"Xanthoparmelia for cancer", strength_of_medicine:"100mg", available_status:"Available", price_cents: 1299, number_of_servings: 10, medicine_type: "tablet")
xanthoparmelia.save!

yellow_toadflax = Medicine.new(name:"Yellow toadflax for Digestion", strength_of_medicine:"500mg", available_status:"Available", price_cents: 2299, number_of_servings: 10, medicine_type: "tablet")
yellow_toadflax.save!

yucca = Medicine.new(name:"Yucca for high blood pressure", strength_of_medicine:"100mg", available_status:"Available", price_cents: 1299, number_of_servings: 50, medicine_type: "tablet")
yucca.save!


first_consultation = Consultation.new(doctor: first_doctor.doctor, patient: first_patient.patient)
first_consultation.save!


first_prescription = Prescription.new(amount_per_serving: "1", servings_per_day: 3, number_of_days: 4, comment: "take after meals", medicine_id: panadol.id, consultation_id: first_consultation.id)
first_prescription.price_cents = panadol.price_cents * (first_prescription.amount_per_serving * first_prescription.servings_per_day * first_prescription.number_of_days)
first_prescription.save!


puts "Seeded"
