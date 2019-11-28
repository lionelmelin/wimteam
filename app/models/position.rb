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
end
