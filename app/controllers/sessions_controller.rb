class SessionsController < ApplicationController

  def create
    @user = current_user
    @user.from_auth_hash(auth)
    # skip_authorization

    redirect_to consultations_path
  end


  private

  def auth
    request.env['omniauth.auth']
  end

end
