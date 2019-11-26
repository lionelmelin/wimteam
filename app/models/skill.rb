class Skill < ApplicationRecord
  has_many :skill_sets

  validates :name, presence: true
end
