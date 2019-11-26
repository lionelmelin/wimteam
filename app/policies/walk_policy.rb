class WalkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.current_managed_teams.include?(record.team)
  end

  def update?
    user.current_managed_teams.include?(record.team)
  end

  def destroy?
    user.current_managed_teams.include?(record.team)
  end
end
