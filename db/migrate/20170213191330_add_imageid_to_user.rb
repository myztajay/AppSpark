class AddImageidToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :image_id, :string
  end
end
