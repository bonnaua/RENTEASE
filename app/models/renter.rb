class Renter < ApplicationRecord
  has_many :renter_contracts

  validates :first_name, :last_name, :email, :password, :phone_number, presence: true
end
