# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1st = User.new(first_name: 'Nicholas', last_name: 'Barkolias', date_of_birth: DateTime.strptime("18/02/1989", "%m/%d/%Y"), contact_number: '0411332270', password: 'password', nationality: 'Australian')
1st.save
Doctor.create(user: 1st, medical_licence_number: 00000, country_of_doctor_licence: 'Australia', clinic_of_practice: 'Melbourne', address_of_clinic_string: 'Collins street, Melbourne')
