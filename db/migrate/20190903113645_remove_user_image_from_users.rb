class RemoveUserImageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_image, :string
  end
end
