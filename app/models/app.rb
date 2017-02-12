class App < ApplicationRecord
  belongs_to :user
  has_many :commitments
  acts_as_taggable
end
