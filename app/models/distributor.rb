class Distributor < ActiveRecord::Base
	has_many :order_items, dependent: :nullify
	
end
