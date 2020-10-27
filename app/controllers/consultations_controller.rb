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
    sql_query = "email ILIKE :query OR last_name ILIKE :query"
    if params[:query].present?
      @user = User.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def create
    @consultation = Consultation.new()
    @doctor = current_user.doctor
    if params[:patient]
      @patient = Patient.find(params[:patient])
    else
      patient_user = User.where(email: params[:consultation][:patient])[0]
      @patient = patient_user.patient
    end
    @consultation.doctor = @doctor
    @consultation.patient = @patient
    authorize @consultation
    @consultation.save
    redirect_to consultation_path(@consultation)
  end

  def show
    @consultation = Consultation.find(params[:id])
    @prescription = Prescription.new()
    @order = Order.where(consultation_id: @consultation.id, state: "paid")
    authorize @consultation
    @task = Task.new
    @medicines = Medicine.all
  end

  def cart
    @consultation = Consultation.find(params[:consultation_id])
    @prescription = Prescription.new()
    authorize @consultation
  end




end
