class Expense < ApplicationRecord
  belongs_to :housing

  validates :name, :category, :amount, :housing, presence: true


  def self.allCategories

  end
end
