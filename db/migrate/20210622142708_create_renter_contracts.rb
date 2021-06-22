class CreateRenterContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :renter_contracts do |t|
      t.references :renter, null: false, foreign_key: true
      t.references :contract, null: false, foreign_key: true

      t.timestamps
    end
  end
end
