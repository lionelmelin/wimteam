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
  validates :purpose, presence: true

  def manager?
    result = false
    current_positions.each do |position|
      result ||= position.role == "manager"
    end
    return result
  end

  def current_teams
    return current_positions.map(&:team)
  end

  def current_positions
    return positions.select { |position| position.end_date.nil? || position.end_date > Date.today }
  end

  def current_managed_teams
    return current_positions.map { |position| position.role == "manager" }
  end

  def seniority
    start_dates = positions.map(&:start_date)
    return (Date.today - start_dates.min).fdiv(365).truncate
  end

  def top_skill_sets
    return skill_sets.select { |skill_set| skill_set.level >= 2 }
  end

  def medium_skill_sets
    return skill_sets.select { |skill_set| skill_set.level < 2 && skill_set.level >= 1 }
  end

  def low_skill_sets
    return skill_sets.select { |skill_set| skill_set.level < 1 }
  end
end
