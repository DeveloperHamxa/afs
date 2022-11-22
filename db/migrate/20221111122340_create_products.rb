class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :descripiton
      t.integer :price
      t.integer :quantity
      t.string :image_url
      t.timestamps
    end
  end
end

