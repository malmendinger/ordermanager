class Order < ActiveRecord::Base
	has_many :order_items, dependent: :destroy
	has_one :customer

end
