class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :costume
  validates :end_date, :begin_date, presence: true
end
