class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.text :requirements
      t.integer :developers_needed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
