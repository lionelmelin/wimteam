class SkillSetsController < ApplicationController
  before_action :set_skill_set, only: [:destroy]

  def create
    raise
  end

  def update
  end

  def destroy
    @skill_set.destroy
  end

  private

  def set_skill_set
    @skill_set = SkillSet.find(params[:id])
    authorize @skill_set
  end
end
