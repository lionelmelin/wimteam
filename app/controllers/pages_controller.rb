class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user_walks = UserWalk.where.not(review: nil)[0..2]
  end

  def dashboard
  end

  private

  def past_walks
    return current_user.user_walks.select{|walk| walk.past?}
  end

  def upcoming_walks
    return current_user.user_walks.reject{|walk| walk.past?}
  end
end
