class AddDetailsToMedications < ActiveRecord::Migration
  def change
    add_column :medications, :dosage, :string
    add_column :medications, :schedule, :string
    add_column :medications, :starts_on, :date
    add_column :medications, :ends_on, :date
    add_column :medications, :patient_id, :integer
  end
end
