class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    true
  end

  def dashboard
  end
end
