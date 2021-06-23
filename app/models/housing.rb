class Housing < ApplicationRecord
  belongs_to :user
  has_many :documents, dependent: :destroy
  has_many :contracts, dependent: :destroy
  has_many :expenses, dependent: :destroy
  has_many :rents, dependent: :destroy
  has_one_attached :photo

  validates :name, :address, :nb_rooms, :surface, presence: true
end
