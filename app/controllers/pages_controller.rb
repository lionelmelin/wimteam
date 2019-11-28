class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user_walks = UserWalk.where.not(review: nil)[0..2]
  end

  def dashboard
  end
end
