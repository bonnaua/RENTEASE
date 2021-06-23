class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.date :start_date
      t.date :end_date
      t.date :rent_due_date
      t.float :rent
      t.float :rental_expenses
      t.references :housing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
