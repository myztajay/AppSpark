class CreateCommitments < ActiveRecord::Migration[5.0]
  def change
    create_table :commitments do |t|
      t.references :user, foreign_key: true
      t.references :app, foreign_key: true

      t.timestamps
    end
  end
end
