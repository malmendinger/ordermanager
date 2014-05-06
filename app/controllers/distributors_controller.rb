class DistributorsController < ApplicationController
	def index
		@distributors = Distributor.all
		@distributor = Distributor.new
		
		render 'no_distributors' and return if Distributor.count == 0
	end
	
	def new
		@distributor = Distributor.new
	end

	def create
		@distributor = Distributor.create(distributor_params)

		redirect_to distributors_path
	end

private
	def distributor_params
		params.require(:distributor).permit(:name)
	end

end
