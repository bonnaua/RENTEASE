class Housing < ApplicationRecord
  belongs_to :user

  has_many :documents
  has_many :contracts
  has_many :expenses
  has_many :rents

  validates :name, :address, :nb_rooms, :surface, :category, :status, presence: true
end
