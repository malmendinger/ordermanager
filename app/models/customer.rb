class Customer < ActiveRecord::Base
	has_many :orders, dependent: :nullify
	
end
