class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :address
      t.integer :quantity
      t.integer :price
      
      t.timestamps
    end
  end
end
