class Renter < ApplicationRecord
  has_many :renter_contracts

  validates :first_name, :last_name, :email, presence: true
  has_one_attached :photo

  def get_housing
    self.renter_contracts.each do |renter_contract|
      return renter_contract.contract.housing.name
    end
  end
end
