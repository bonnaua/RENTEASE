class Contract < ApplicationRecord
  belongs_to :housing
  has_many :rents
  has_many :renter_contracts
  has_many :renters, through: :renter_contracts

  validates :start_date, :end_date, :rent_due_date, :rent, :rental_expenses, presence: true
end
