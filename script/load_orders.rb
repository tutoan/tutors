Order.transaction do
	Order.delete_all
	(1..9).each do |i|
		Order.create(:name => "Customer #{i}" , :address => "#{i} Main Street" ,
			:phone_number => "505#{i}00#{i}000" ,
			:email => "customer-#{i}@example.com" , :pay_type => "Check" )
	end
end