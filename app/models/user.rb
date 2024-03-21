class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments

  validates :password, format: { with: /\A(?=.*?[\d])(?=.*?[a-z])[a-z\d]+\z/i, message: "が無効です。文字と数字の両方を含めてください" }
  validates :nickname, presence: true
end
