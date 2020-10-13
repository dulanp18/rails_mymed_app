class ConsultationsController < ApplicationController

  def index
    all_consultations = policy_scope(Consultation)
    @user = current_user
    if @user.user_type == 'patient'
      @consultations = Consultation.where(patient_id: @user.patient.id)
    elsif @user.user_type == 'doctor'
      @consultations = Consultation.where(doctor_id: @user.doctor.id)
    end
  end

  def new
    @consultation = Consultation.new()
    authorize @consultation

    if params[:query].present?
     @users = User.where(email: params[:query].downcase, user_type: 'patient')
    end
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
    @order = Order.where(consultation_id: @consultation.id)
    authorize @consultation
    @task = Task.new
    @medicines = Medicine.all
    @medicine_names = []
    @medicines.each do |medicine|
      @medicine_names << medicine.name + " - " medicine.strength_of_medicine + " - " + medicine.medicine_type
    end
  end

  def cart
    @consultation = Consultation.find(params[:consultation_id])
    @prescription = Prescription.new()
    authorize @consultation
  end




end
