class Skill < ApplicationRecord
  has_many :skill_sets

  validates :name, presence: true

  def self.all_short
    return Skill.all.map { |skill| skill.name.size > 50 ? skill.name.truncate(50).capitalize : skill.name.capitalize }
  end
end
