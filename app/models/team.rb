class Team < ApplicationRecord
  has_many :positions
  has_many :walks
  has_one_attached :photo
end
