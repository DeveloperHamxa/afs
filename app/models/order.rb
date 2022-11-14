class Order < ApplicationRecord
    has_many :order_details
    has_many :products,  through: :order_details

    validates :address, presence: true
    validates :quantity, presence: true
    validates :price, presence: true
    validates :product_ids, presence: true

    accepts_nested_attributes_for :products


end
