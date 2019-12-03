class UserWalksController < ApplicationController
  def create
    @user_walk = current_user.user_walks.new(user_walk_params)
    @walk = Walk.find(params[:walk_id])
    @user_walk.walk = @walk
    @user_walk.status = "pending"
    authorize @user_walk
    if @user_walk.save
      redirect_to myapplications_path
    else
      render 'walks/show'
    end
  end

  def update
  end

  def destroy
    @user_walk = current_user.user_walks.find(params[:id])
    authorize @user_walk
    @user_walk.destroy
    respond_to do |format|
      format.html {redirect_to myapplications_path}
      format.js
    end
  end

  private

  def user_walk_params
    params.require(:user_walk).permit(:start_date, :end_date, :motivation, :user, :walk)
  end
end
