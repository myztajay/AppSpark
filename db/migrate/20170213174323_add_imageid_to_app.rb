class AddImageidToApp < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :image_id, :string
  end
end
