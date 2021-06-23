class Expense < ApplicationRecord
  belongs_to :housing

  validates :name, :category, :amount, presence: true
end
