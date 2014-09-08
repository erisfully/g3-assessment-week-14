class Medication < ActiveRecord::Base

  belongs_to :patient
  validates :name, :dosage, :schedule, :starts_on, :ends_on, :patient_id, :presence => true

end