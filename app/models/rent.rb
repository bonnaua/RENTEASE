class Rent < ApplicationRecord
  belongs_to :contract
  belongs_to :housing
end
