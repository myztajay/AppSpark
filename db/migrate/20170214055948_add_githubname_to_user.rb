class AddGithubnameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :github_name, :string
  end
end
