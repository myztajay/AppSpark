class Commitment < ApplicationRecord
  belongs_to :user
  belongs_to :app
  validates_uniqueness_of :user_id, :scope => :app_id
end
