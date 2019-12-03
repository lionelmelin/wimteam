class SkillSetsController < ApplicationController
  before_action :set_skill_set, only: [:destroy]

  def create
    @skill_set = SkillSet.new(skill_id: skill_set_params[:skill_id], skillable_type: skill_set_params[:skillable_type])
    case skill_set_params[:level]
    when "Master"
      @skill_set.level = 2
    when "Comfortable with"
      @skill_set.level = 1
    when "Notions"
      @skill_set.level = 0
    end

    case skill_set_params[:skillable_type]
    when "Position"
      @skill_set.skillable = current_user.current_positions.first
    when "User"
      @skill_set.skillable = current_user
    end

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
  end

  private

  def set_skill_set
    @skill_set = SkillSet.find(params[:id])
    authorize @skill_set
  end

  def skill_set_params
    params.require(:skill_set).permit(:skill_id, :level, :skillable_type)
  end
end
