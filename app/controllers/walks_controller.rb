class WalksController < ApplicationController
before_action :set_walk, only: [:show, :update, :destroy]

  def index
    @user = current_user
    @walks = policy_scope(Walk)
    @walks = @walks.global_search(params[:query]) if params[:query].present?
    @walks = @walks.search_by_location(params[:location]) if params[:location].present?
    @walks = @walks.search_by_department(params[:department]) if params[:department].present?
    @walks = @walks.search_by_duration(params[:duration]) if params[:duration].present?
    @walks = @walks.order(created_at: :desc)
  end


  def show
    @user_walk = UserWalk.new
    authorize @user_walk
  end

  def new
    # @walk = current_user.walks.new
    # authorize @walk
  end

  def create
    # @walk = current_user.walks.new(walk_params)
    # authorize @walk
    # if @walk.save
    #   redirect_to walk_path(@walk)
    # else
    #   render :new
    # end
  end

  def update
    # @walk.update(walk_params)
    # redirect_to walk_path(@walk)
  end

  def destroy
    # @walk.destroy if @walk.user_walks.empty?
  end

  private

  def walk_params
    params.require(:walk).permit(:description, :duration) #, :team)
  end

  def set_walk
    @walk = Walk.find(params[:id])
    authorize @walk
  end
end
