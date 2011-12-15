class StoreController < ApplicationController
	skip_before_filter :authorize
	
  def index
		@listings = Listing.all
		@cart = current_cart
  end

end
