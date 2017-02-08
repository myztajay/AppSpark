class RemoveUserFromSkill < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :user_id
  end
end
