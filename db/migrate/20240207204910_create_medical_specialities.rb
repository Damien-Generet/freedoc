class CreateMedicalSpecialities < ActiveRecord::Migration[7.1]
  def change
    create_table :medical_specialities do |t|
        t.belongs_to :doctor, index: true
        t.belongs_to :speciality, index: true
      t.timestamps
    end
  end
end
