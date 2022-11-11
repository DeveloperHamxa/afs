class Category < ApplicationRecord
    has_one_attached :category_image

    def image_url
        Rails.application.routes.url_helpers.url_for(category_image) if category_image.attached? 
    end
end
