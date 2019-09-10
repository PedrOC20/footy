class AddFootToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :foot, :string
  end
end
