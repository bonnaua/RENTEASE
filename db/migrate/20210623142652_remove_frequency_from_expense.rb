class RemoveFrequencyFromExpense < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenses, :frequency
  end
end
