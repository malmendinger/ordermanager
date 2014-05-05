class OrderItem < ActiveRecord::Base
	belongs_to :order
	has_one :distributor
	has_one :order_status
	
end
