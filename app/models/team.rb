class Team < ApplicationRecord
  has_many :positions
  has_many :users, through: :positions
  has_many :walks

  has_one_attached :photo
  validates :name, presence: true
end
