class Product < ApplicationRecord
    has_many :product_categories
    has_many :categories,  through: :product_categories

    has_many :order_details
    has_many :orders,  through: :order_details
    
    validates :title, presence: true
    validates :descripiton, presence: true
    validates :price, presence: true
    validates :quantity, presence: true
    validates :image_url, presence: true


    accepts_nested_attributes_for :categories

end
