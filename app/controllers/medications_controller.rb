class MedicationsController < ApplicationController

  def new
    @medication = Medication.new
    @patient = Patient.find(params[:patient_id])
    @medications = Medication.all
  end

  def create
    @medications = Medication.all
    @patient = Patient.find(params[:patient_id])

    @start_date = Date.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    @end_date = Date.new(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)

    @medication = Medication.create(
      name: params[:medication][:name],
      dosage: params[:medication][:dosage],
      schedule: params[:medication][:schedule],
      starts_on: @start_date,
      ends_on: @end_date,
      patient_id: params[:medication][:patient_id]
    )
    if @medication.save
      flash[:notice] = "Your prescription has been created"
      redirect_to patient_path(:id => params[:medication][:patient_id])
    else
      flash[:notice] = "Your prescription could not be saved"
      render 'new'
    end
  end
end