class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :positions
  has_many :teams, through: :positions
  has_many :user_walks
  has_one_attached :photo
  has_many :walks, through: :user_walks
  has_many :skill_sets, as: :skillable
  has_many :skills, through: :skill_sets
  # validates :gender, presence: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :birth_date, presence: true
  # validates :graduation_date, presence: true

  def manager?
    result = false
    positions.each do |position|
      result ||= position.role == "manager" && position.end_date > Date.today
    end
    return result
  end

  def current_teams
    current_teams = []
    positions.each do |position|
      current_teams << position.team if positiion.end_date > Date.today
    end
    return current_teams
  end

  def current_managed_teams
    managed_teams = []
    positions.each do |position|
      managed_teams << position.team if positiion.end_date > Date.today && position.role == "manager"
    end
    return managed_teams
  end

end
