class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :housings, dependent: :destroy
  has_one_attached :photo
  validates :first_name, :last_name, :email, :password, presence: true

  def get_renters
    renters = []
    self.housings.each do |housing|
      housing.contracts.each do |contract|
        contract.renters.each do |renter|
          renters << renter
        end
      end
    end
    return renters
  end

end
