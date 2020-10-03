class PatientsController < ApplicationController


  private

   def patient_params
      params.require(:patient).permit(:home_address, :allergies, :user_attributes => [:first_name, :last_name,])
  end

end
