class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :location
      t.text :description
      t.integer :field_size
      t.string :field_type
      t.boolean :locker_room
      t.boolean :indoor
      t.boolean :parking
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
