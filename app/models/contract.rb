class Contract < ApplicationRecord
  belongs_to :housing
  has_many :rents, dependent: :destroy
  has_many :renter_contracts, dependent: :destroy
  has_many :renters, through: :renter_contracts

  validates :start_date, :end_date, :rent, :rental_expenses, presence: true

  def get_renter_avatar
    self.renter_contracts.each do |renter_contract|
      return renter_contract.renter.photo
    end
  end
end
