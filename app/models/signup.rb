class Signup
	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend ActiveModel::Naming
	
	attr_accessor :name, :address, :email, :phone_number, :description
	
	validates :name, :address, :email, :phone_number, :description, :presence => true
	
	def initialize(attributes = {})
		attributes.each do |name, value|
			send("#{name}=", value)
		end
	end
	
	def persisted?
		false
	end
	
end
