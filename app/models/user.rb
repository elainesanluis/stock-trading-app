class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_stocks, dependent: :destroy
  has_many :stocks, through: :user_stocks
  has_many :orders, dependent: :destroy
  has_many :transaction_records

  


end

