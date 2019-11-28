class UserWalk < ApplicationRecord
  belongs_to :user
  belongs_to :walk

  validates :user, presence: true
  validates :walk, presence: true
  validates :status, presence: true

  def self.reviewed_walks
  end
end
