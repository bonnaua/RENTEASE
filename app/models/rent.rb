class Rent < ApplicationRecord
  belongs_to :contract
  belongs_to :housing

  validates :amount, :date, presence: true
end
