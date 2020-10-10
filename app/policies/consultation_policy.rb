class ConsultationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def new?
    user.user_type == "doctor"
  end

  def create?
    user.user_type == 'doctor'
  end

  def show?
    user.doctor == record.doctor || user.patient == record.patient
  end

  def cart?
    true
  end

end
