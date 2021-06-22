class Contract < ApplicationRecord
  belongs_to :housing
  has_many :rents
  has_many :renter_contracts
end
