class AddCoordinatesToHousings < ActiveRecord::Migration[6.0]
  def change
    add_column :housings, :latitude, :float
    add_column :housings, :longitude, :float
  end
end
