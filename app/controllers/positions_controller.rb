class PositionsController < ApplicationController
  def show
    @member = Position.find(params[:id])
    authorize @member
    respond_to do |format|
      format.js
    end
  end

  def create
  end

  def update
  end
end
