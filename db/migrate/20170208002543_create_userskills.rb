class CreateUserskills < ActiveRecord::Migration[5.0]
  def change
    create_table :userskills do |t|
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
