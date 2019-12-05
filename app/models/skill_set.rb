class SkillSet < ApplicationRecord
  belongs_to :skillable, polymorphic: true
  belongs_to :skill

  validates :skill, presence: true
  validates :level, presence: true
end
