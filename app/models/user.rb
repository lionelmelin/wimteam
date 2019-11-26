class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :positions
  has_many :user_walks

  def manager?
    result = false
    @positions.each do |position|
      result ||= position.role == "manager" && position.end_date > Date.today
    end
    return result
  end

  def current_teams
    teams = []
    @positions.each do |position|
      teams << position.team if positiion.end_date > Date.today
    end
    return teams
  end
end
