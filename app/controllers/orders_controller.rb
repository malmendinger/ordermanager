class OrdersController < ApplicationController
	def index
		@orders = Order.all

		render 'no_orders' and return if @orders.count == 0
	end

	def new
		@order = Order.new

	end

private
	def order_params
		params.require(:order).permit(:customer_id, :description)
	end
end
