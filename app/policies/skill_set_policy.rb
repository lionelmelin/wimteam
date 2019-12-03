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
    record.skillable == user || user.current_managed_teams.include?(record.skillable.team) || user.positions.include?(record.skillable)
  end

  def update?
    record.skillable == user || user.current_managed_teams.include?(record.skillable.team) || user.positions.include?(record.skillable)
  end

  def destroy?
    record.skillable == user || user.current_managed_teams.include?(record.skillable.team) || user.positions.include?(record.skillable)
  end
end
