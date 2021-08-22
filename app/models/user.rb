class User < ApplicationRecord
  has_many :user_stocks
  has_many :stocks, through: :user_stocks

  validates :name, :thicker, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
