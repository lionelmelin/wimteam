class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user_walks = UserWalk.where.not(review: nil)[0..2]
  end

  def dashboard
  end

  def myapplications
    @past_user_walks = past_user_walks
    @upcoming_user_walks = upcoming_user_walks
  end

  private

  def past_user_walks
    return current_user.user_walks.select{|walk| walk.past?}
  end

  def upcoming_user_walks
    return current_user.user_walks.reject{|walk| walk.past?}
  end
end
