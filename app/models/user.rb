class User < ApplicationRecord
  validates :email, presence: true, length: { maximum: 256 }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]

  has_many :advertisements
end
