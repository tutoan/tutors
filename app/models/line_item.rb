class LineItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :listing
	belongs_to :cart
end
