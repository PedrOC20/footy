class AddCoordinatesToFields < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :latitude, :float
    add_column :fields, :longitude, :float
  end
end
