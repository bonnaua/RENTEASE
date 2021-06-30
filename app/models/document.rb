class Document < ApplicationRecord
  belongs_to :housing
  has_one_attached :pages

  validates :name, :category, presence: true
end
