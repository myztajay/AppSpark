class App < ApplicationRecord
  belongs_to :user
  has_many :commitments
end
