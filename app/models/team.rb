class Team < ApplicationRecord
  has_many :positions
  has_many :walks
end
