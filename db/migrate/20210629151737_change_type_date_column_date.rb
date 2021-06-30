class ChangeTypeDateColumnDate < ActiveRecord::Migration[6.0]
  def change
    change_column :rents, :date, :string
  end
end
