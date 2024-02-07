class Speciality < ApplicationRecord
  has_many :medical_specialities
  has_many :doctors, through: :medical_specialities
end
