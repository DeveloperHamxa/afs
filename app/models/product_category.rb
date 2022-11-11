class ProductCategory < ApplicationRecord
    belongs_to :product, class_name: "Product"
    belongs_to :category, class_name: "Category"
end
