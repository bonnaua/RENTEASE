class Housing < ApplicationRecord
  belongs_to :user
  has_many :documents, dependent: :destroy
  has_many :contracts, dependent: :destroy
  has_many :expenses, dependent: :destroy
  has_many :rents, dependent: :destroy
  has_one_attached :photo

  validates :name, :address, :nb_rooms, :surface, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :address, :category, :description],
    using: {
      tsearch: { prefix: true }
    }
end
