class Skill < ApplicationRecord

  has_many :userskills
  has_many :users, through: :userskills
end
