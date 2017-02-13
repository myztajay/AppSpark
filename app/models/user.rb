class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :userskills
  has_many :skills, through: :userskills
  has_many :commitments
  has_many :apps, through: :commitments
  attachment :image
end
