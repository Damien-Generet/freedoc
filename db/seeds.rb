# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
zip = ["75001", "75002", "75003", "75004", "75005", "75006", "75007", "75008", "75009", "75010", "75011", "75012", "75013", "75014", "75015", "75016", "75017", "75018", "75019", "75020", "69001", "69002", "69003", "69004", "69005", "69006", "69007", "69008", "69009", "13001", "13002", "13003", "13004", "13005", "13006", "13007", "13008", "13009", "13010", "13011", "13012", "13013", "13014", "13015", "13016", "33000", "33001", "33002", "33003"]
specialites_medicales = ["Cardiologie", "Dermatologie", "Gastro-entérologie", "Gynécologie", "Neurologie", "Ophtalmologie", "Pédiatrie", "Psychiatrie", "Rhumatologie", "Urologie", "Orthopédie", "Endocrinologie", "Néphrologie", "Oncologie", "Radiologie", "Chirurgie générale", "Chirurgie plastique", "Médecine interne", "Médecine du travail", "Médecine d'urgence", "Médecine du sport", "Allergologie", "Anesthésiologie", "Angiologie", "Immunologie", "Médecine légale", "Médecine nucléaire", "Médecine physique et réadaptation", "Médecine préventive", "Médecine tropicale", "Néonatologie", "Neurochirurgie", "Oto-rhino-laryngologie (ORL)", "Pédiatrie néonatale", "Podologie", "Pneumologie", "Proctologie", "Radiologie interventionnelle", "Réanimation médicale", "Sexologie", "Toxicologie", "Traumatologie", "Urologie pédiatrique", "Vénérologie", "Viscéralogie", "Chirurgie cardio-thoracique", "Chirurgie dentaire", "Chirurgie vasculaire", "Chirurgie orthopédique pédiatrique", "Chirurgie maxillo-faciale"]

specialites_medicales.each do |spec|
  Speciality.create(name: spec)
end



100.times do
spec = Speciality.all.sample
doc = Doctor.all.sample
  MedicalSpeciality.create(doctor: doc, speciality: spec)
end





# Appointment.all.each do |appointment|
#   doctor_city_id = appointment.doctor.city_id
#   appointment.update(city_id: doctor_city_id)
# end


# 100.times do
#  all_doctors << Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: doctor_spec.sample, zip_code: zip.sample)
#  puts all_doctors
# end

# 100.times do
# all_patients << Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# end

# 50.times do
#   doc = all_doctors.sample
#   sick = all_patients.sample
#   Appointment.create(doctor: doc, patient: sick, date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now + 1, format: :long))
# end

