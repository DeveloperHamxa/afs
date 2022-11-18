class Api::ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @products = Product.all 
    end 
    
    def show
        @product = Product.find(params[:id])
        render json: @product
    end 

    def featured
        @products = Product.where("featured_product = 't'").limit(6)
    end

    def create
        @product = Product.create(product_params)
        render json: @product
    end 

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        render json: @product
    end 

    def destroy
        @products = Product.all 
        @product = Product.find(params[:id])
        @product.destroy
        render json: @products
    end 

    private

    def product_params
      params.require(:product).permit(:title, :descripiton, :price, :quantity, :image_url, category_ids: [])
    end
end
