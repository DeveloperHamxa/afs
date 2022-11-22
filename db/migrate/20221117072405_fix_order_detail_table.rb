class FixOrderDetailTable < ActiveRecord::Migration[7.0]
  def change
    add_column :order_details, :price, :integer
    add_column :order_details, :quantity, :integer
  end
end

