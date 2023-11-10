class Schedule < ApplicationRecord
  validates :title, presence:true
  validates :start_date, presence:true
  validates :end_date, presence:true
  validates :title, length: { maximum:20 }
  validates :memo, length: { maximum:500 }
  validate :end_date_cannot_be_before_the_start_date

  def end_date_cannot_be_before_the_start_date
    if end_date < start_date
      errors.add(:end_date, "は開始日より前に設定してください")
    end
  end

end