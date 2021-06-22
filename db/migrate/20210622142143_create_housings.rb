class CreateHousings < ActiveRecord::Migration[6.0]
  def change
    create_table :housings do |t|
      t.string :name
      t.text :address
      t.text :description
      t.integer :nb_rooms
      t.float :surface
      t.string :category
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
