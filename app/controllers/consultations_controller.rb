class ConsultationsController < ApplicationController

  def index
    @user = current_user
    if @user.user_type == 'patient'
      @consultations = Consultation.where(patient_id: @user.id)
    elsif @user.user_type == 'doctor'
      @consultation = Consultation.where(doctor_id: @user.id)
    end
  end

  def new

  end

  def create
    @consultation = Consultation.new()
    @doctor = current_user
    @patient = params[:patient]
    @consultation.doctor = @doctor
    @consultation.patient = @patient
    @consultation.save

    redirect_to consultation_path(@consultation)
  end




end
