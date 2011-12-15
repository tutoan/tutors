class Order < ActiveRecord::Base
	has_many :line_items, :dependent => :destroy
	
	before_save do
		self.phone_number = phone_number.to_s.gsub(/\D/, '').to_i
	end
	
	PAYMENT_TYPES = [ "Check", "Purchase order" ]
	
	validates :name, :address, :email, :phone_number, :pay_type, :presence => true
	validates :pay_type, :inclusion => PAYMENT_TYPES
	
	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end
		
end
