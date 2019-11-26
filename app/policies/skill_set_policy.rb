class SkillSetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    record.user == user || user.current_managed_teams.include?(record.walk.team)
  end

  def update?
    record.user == user || user.current_managed_teams.include?(record.walk.team)
  end

  def destroy?
    record.user == user || user.current_managed_teams.include?(record.walk.team)
  end
end
