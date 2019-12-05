class ProfilesController < ApplicationController
  def update
    @user = current_user
    authorize @user
    @user.purpose == "Discovery" ? @user.purpose = "Recruitment" : @user.purpose = "Discovery"
    @user.save
  end
end
