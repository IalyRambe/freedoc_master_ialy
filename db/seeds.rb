# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

doctor_array = []
patient_array = []
appointment_array = []

10.times do |index|
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Educator.subject, zip_code: Faker::Number.number(digits: 5))
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  doctor_array << doctor
  patient_array << patient
end

10.times do
  city = City.create!(city: Faker::Address.city)
end

# Appointment ne s'exécute pas avec les ID
#10.times do
  #appointment = Appointment.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 50), doctor_id: doctor.id, patient_id: patient.id)
#end
