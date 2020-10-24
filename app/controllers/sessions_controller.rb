class SessionsController < ApplicationController

  def create
    @consultation_id = params[:consultation_id]
    @user = current_user
    @user.from_auth_hash(auth)
    if @consultation_id
      redirect_to consultation_path(id: @consultation_id)
    else
      redirect_to patient_path(current_user.patient)
      flash[:notice] = 'Your Calendar Is Now Linked. Start tracking your prescriptions.'
    end
  end


  private

  def auth
    request.env['omniauth.auth']
  end

end
