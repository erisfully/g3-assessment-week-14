class PatientsController < ApplicationController

  def show
    @patient = Patient.find(params[:id])
    @medications = Medication.where(patient_id: "#{params[:id]}")
  end
end