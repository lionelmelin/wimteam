class Position < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :skill_sets, as: :skillable
  has_many :skills, through: :skill_sets

  validates :user, presence: true
  validates :team, presence: true
  validates :role, presence: true, inclusion: { in: ["member", "manager", "rh"] }
end
