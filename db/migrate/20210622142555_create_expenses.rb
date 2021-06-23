class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :category
      t.text :description
      t.float :amount
      t.string :frequency
      t.references :housing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
