class CustomersController < ApplicationController
	def index
		@customers = Customer.all
		@customer = Customer.new

		render 'no_customers' and return if Customer.count == 0
	end

	def show
		@customer = Customer.find params[:id]
	end

	def new
		@customer = Customer.new
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def create
		@customer = Customer.create(customer_params)

		redirect_to customers_path(), notice: "Customer created successfully!"
	end

	def update
		@customer = Customer.find(params[:id])
		@customer.update_attributes(customer_params)

		redirect_to customer_path(@customer)
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy

		redirect_to customers_path
	end
	

private
	def customer_params
		params.require(:customer).permit(:name)
	end
end
