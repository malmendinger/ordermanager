class DistributorsController < ApplicationController
	def index
		@distributors = Distributor.all
	end
	
end
