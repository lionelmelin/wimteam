class Position < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :user, presence: true
  validates :team, presence: true
  validates :job_code, presence: true
  validates :role, presence: true, inclusion: { in: ["member", "manager", "rh"] }
end
