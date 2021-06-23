class Rent < ApplicationRecord
  belongs_to :contract
  belongs_to :housing

  validates :amount, :status, :start_date, :end_date, presence: true
end
