class Order < ApplicationRecord
    has_many :order_details
    # has_many :products,  through: :order_details

    # accepts_nested_attributes_for :products
    accepts_nested_attributes_for :order_details

    # validates :address, presence: true
    # validates :total_price, presence: true
    # validates :phone_number, length: { is: 11 }
    # validates :card_number, lorder_detailsength: { in: 14..16 }
    # validates :csv, length: { is: 3 }

    # validate :expiration_date_cannot_be_in_the_past

    # def expiration_date_cannot_be_in_the_past
    #     if expiry.present? && expiry < Date.today
    #     errors.add(:expiry, "can't be in the past")
    #     end
    # re

end
