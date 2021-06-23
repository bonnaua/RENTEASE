class Renter < ApplicationRecord
  has_many :renter_contracts

  validates :first_name, :last_name, :email, presence: true
  has_one_attached :photo
end
