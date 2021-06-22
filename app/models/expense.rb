class Expense < ApplicationRecord
  belongs_to :housing

  validates :name, :category, :amount, :frequency, presence: true
end
