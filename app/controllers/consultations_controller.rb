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
    @consultation = Consultation.new()
    authorize @consultation
  end

  def create
    @consultation = Consultation.new()
    @doctor = current_user.doctor
    patient_user = User.where(email: params[:consultation][:patient])[0]
    @patient = patient_user.patient
    @consultation.doctor = @doctor
    @consultation.patient = @patient
    authorize @consultation
    @consultation.save


    redirect_to consultation_path(@consultation)
  end

  def show
    @consultation = Consultation.find(params[:id])
    @prescription = Prescription.new()
    authorize @consultation
  end




end
