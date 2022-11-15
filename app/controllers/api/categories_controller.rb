class Api::CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end
    
    def show
        @category = Category.find(params[:id])
        @category_products = @category.products
        render json: @category_products
    end 
end
