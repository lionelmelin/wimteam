class Position < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :skill_sets, as: :skillable
  has_many :skills, through: :skill_sets

  validates :user, presence: true
  validates :team, presence: true
  validates :job_code, presence: true
  validates :role, presence: true, inclusion: { in: ["member", "manager", "rh"] }

  def seniority
    return (Date.today - start_date).fdiv(365).truncate
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
