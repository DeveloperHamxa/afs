class Api::OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @orders = Order.all
    end

    def show
        @order = Order.find(params[:id])
    end 

    def create
        @order = Order.new(order_params)
        @order.save
        # @order = Order.create!(order_params)
    end 

    def update
        @order = Order.find(params[:id])
        @order.update(order_params)
        render json: @order
    end 

    def destroy
        @orders = Order.all 
        @order = Order.find(params[:id])
        @order.destroy
        render json: @orders
    end 
    private
    
    def order_params
      params.require(:order).permit(:first_name, :last_name, :phone_number, :address, :total_price,:card_number, :csv, order_details_attributes: [ :product_id, :price, :quantity])
    end
end
