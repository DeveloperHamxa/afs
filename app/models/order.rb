class Order < ApplicationRecord
    has_many :order_details
    has_many :products,  through: :order_details

    validates :address, presence: true
    validates :quantity, presence: true
    validates :price, presence: true
    validates :product_ids, presence: true
    validates :card_number, length: { in: 14..16 }
    validates :csv, length: { is: 3 }

    validate :expiration_date_cannot_be_in_the_past

    def expiration_date_cannot_be_in_the_past
        if expiry.present? && expiry < Date.today
        errors.add(:expiry, "can't be in the past")
        end
    end 


    accepts_nested_attributes_for :products


end
