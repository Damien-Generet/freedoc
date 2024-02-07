class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
  has_many :medical_specialities
  has_many :specialities, through: :medical_specialities
end
