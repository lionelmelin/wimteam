class Walk < ApplicationRecord
  belongs_to :team

  has_many :skill_sets, as: :skillable
  has_many :skills, through: :skill_sets

  validates :team, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :duration, :duration ],
    associated_against: {
      team: [ :location, :department, :name, :description ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
