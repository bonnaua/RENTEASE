class RemoveColumnFromRents < ActiveRecord::Migration[6.0]
  def change
    remove_column :rents, :end_date
    rename_column  :rents, :start_date, :date
  end
end
