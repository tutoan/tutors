class FaqController < ApplicationController
	skip_before_filter :authorize
	
  def index
  end

end
