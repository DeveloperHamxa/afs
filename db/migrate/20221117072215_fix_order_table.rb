class FixOrderTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :price, :total_price
    remove_column :orders, :quantity
  end
end

