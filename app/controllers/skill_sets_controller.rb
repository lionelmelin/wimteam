class SkillSetsController < ApplicationController
  before_action :set_skill_set, only: [:destroy]

  def create
    @skill_set = SkillSet.new(skill_set_params)
    configure_skillable(@skill_set)

    authorize @skill_set

    if @skill_set.save
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :'pages/dashboard' }
        format.js
      end
    end
  end

  def update
  end

  def destroy
    @skill_set.destroy
    @empty_skill_set = current_user.skill_sets.where(level: @skill_set.level, skillable_type: @skill_set.skillable_type).empty?
  end

  private

  def set_skill_set
    @skill_set = SkillSet.find(params[:id])
    authorize @skill_set
  end

  def skill_set_params
    params.require(:skill_set).permit(:skill_id, :level, :skillable_type)
  end

  def configure_skillable(skill_set)
    case skill_set.skillable_type
    when "Position"
      skill_set.skillable = current_user.current_positions.first
    when "User"
      skill_set.skillable = current_user
    end
  end
end
