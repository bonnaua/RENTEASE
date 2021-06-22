class Document < ApplicationRecord
  belongs_to :housing

  validates :name, :category, presence: true
end
