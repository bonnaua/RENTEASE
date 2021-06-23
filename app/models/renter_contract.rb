class RenterContract < ApplicationRecord
  belongs_to :renter
  belongs_to :contract
end
