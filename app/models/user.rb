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

  validates :gender, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :graduation_date, presence: true

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
