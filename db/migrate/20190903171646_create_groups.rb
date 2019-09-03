class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :min_members
      t.integer :max_members
      t.integer :status
      t.integer :price
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
