class Walk < ApplicationRecord
  belongs_to :team

  has_many :skill_sets, as: :skillable
  has_many :skills, trough: :skill_sets

  validates :team, presence: true
end
