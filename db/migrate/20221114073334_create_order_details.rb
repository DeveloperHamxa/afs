class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :order, foreign_key: {to_table: :orders}
      t.references :product, foreign_key: {to_table: :products}
      t.timestamps
    end
  end
end

