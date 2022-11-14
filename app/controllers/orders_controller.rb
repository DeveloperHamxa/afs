class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def show
        @order = Order.find(params[:id])
        render json: @order
    end 

    def create
        @order = Order.create(order_params)
        render json: @order
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
      params.require(:order).permit(:address, :price, :quantity, product_ids: [])
    end
end
