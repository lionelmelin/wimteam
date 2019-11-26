class PositionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true # anyone can view a position
  end

  private

  def user_is_authorized?
    record.user == user # || user.admin
  end
end
