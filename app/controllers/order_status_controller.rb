class OrderStatusController < ApplicationController
	def index
		@orderstatuses = OrderStatus.all
	end

	def show
		@orderstatus = OrderStatus.find(params[:id])
	end
end
