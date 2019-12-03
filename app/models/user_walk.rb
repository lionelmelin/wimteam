class UserWalk < ApplicationRecord
  belongs_to :user
  belongs_to :walk

  validates :user, presence: true
  validates :walk, presence: true
  validates :status, presence: true
  validates :start_date, presence: true

  def self.reviewed_walks
  end

  def past?
    return start_date < Date.today
  end

  def display_start_date
    display_date(start_date)
  end

  def display_end_date
    display_date(end_date)
  end

  def length_in_days
    (end_date - start_date).to_i
  end

  private

  def explicit_month(month)
    months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    return months[month - 1]
  end

  def explicit_day(day)
    days = %w[Sun Mon Tues Wed Thur Fri Sat]
    return days[day]
  end

  def display_date(date)
    month = date.month
    day = date.day
    w_day = date.wday
    year = date.year
    return "#{explicit_day(w_day)} #{day} #{explicit_month(month)} #{year}"
  end
end
