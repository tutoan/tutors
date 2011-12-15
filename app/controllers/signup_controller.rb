class SignupController < ApplicationController
	skip_before_filter :authorize
	
  def create
		@signup = Signup.new(params[:signup])
		
		respond_to do |format|
			# TODO: get validation to work for tableless form
			if @signup.valid?
					format.html { redirect_to store_url, :notice => 'Thank you for your submission. Someone will review your credential and contact you shortly.' }
			else
					format.html { redirect_to store_url, :notice => 'Thank you for your submission. Someone will review your credential and contact you shortly.' }
			end
		end
  end

end
