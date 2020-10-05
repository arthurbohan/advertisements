class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:guest, :user, :admin]
  
  has_many :advertisements
end
