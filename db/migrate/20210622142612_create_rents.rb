class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.float :amount
      t.string :status
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :contract, null: false, foreign_key: true
      t.references :housing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
