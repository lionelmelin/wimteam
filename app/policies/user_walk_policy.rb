class UserWalkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    record.user == user
  end

  def update?
    # true
    record.user == user || user.current_managed_teams.include?(record.walk.team)
  end

  def destroy?
    record.user == user
  end
end
