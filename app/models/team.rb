class Team < ApplicationRecord
  has_many :positions
  has_many :users, through: :positions
  has_many :walks

  validates :name, presence: true
end
