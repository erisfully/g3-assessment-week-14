class Medication < ActiveRecord::Base

  has_many :patients
  validates :name, :dosage, :schedule, :starts_on, :ends_on, :presence => true

end