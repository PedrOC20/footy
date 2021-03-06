class CreateGroupMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :group_members do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.integer :field_review_rating
      t.text :field_review_description

      t.timestamps
    end
  end
end
