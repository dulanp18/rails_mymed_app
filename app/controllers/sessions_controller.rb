class SessionsController < ApplicationController

  def create
    @consultation_id = params[:consultation_id]
    @user = current_user
    @user.from_auth_hash(auth)
    # skip_authorization
    if @consultation_id
      redirect_to consultation_path(id: @consultation_id)
    else
      redirect_to consultations_path
    end
  end


  private

  def auth
    request.env['omniauth.auth']
  end

end
