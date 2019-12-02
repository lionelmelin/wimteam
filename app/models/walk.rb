class Walk < ApplicationRecord
  belongs_to :team

  has_many :skill_sets, as: :skillable
  has_many :skills, through: :skill_sets

  validates :team, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:description, :duration],
    associated_against: {
      team: [:location, :department, :name, :description]
    },
    using: {
      tsearch: { prefix: true }
    }
  pg_search_scope :search_by_location,
    associated_against: {
      team: [:location]
    },
    using: {
      tsearch: { prefix: true }
    }
  pg_search_scope :search_by_department,
    associated_against: {
      team: [:department]
    },
    using: {
      tsearch: { prefix: true }
    }
  pg_search_scope :search_by_duration,
    against: [:duration],
    using: {
      tsearch: { prefix: true }
    }
end
