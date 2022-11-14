class OrderDetail < ApplicationRecord
    belongs_to :product, class_name: "Product"
    belongs_to :order, class_name: "Order"
end
