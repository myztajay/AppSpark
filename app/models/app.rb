class App < ApplicationRecord
  belongs_to :user
  has_many :commitments
  acts_as_taggable
  attachment :image
  before_save :downcase_fields


  def downcase_fields
  self.name.downcase!
  end
end
