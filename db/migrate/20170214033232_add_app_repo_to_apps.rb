class AddAppRepoToApps < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :repo, :string
  end
end
