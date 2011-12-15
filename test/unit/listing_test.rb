require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  
	# test "the truth" do
  #   assert true
  # end
	
	test "listing attributes must not be empty" do
		listing = Listing.new
		assert listing.invalid?
		assert listing.errors[:title].any?
		assert listing.errors[:description].any?
		assert listing.errors[:price].any?
		assert listing.errors[:image_url].any?
	end
	
	test "listing price must be positive" do
		listing = Listing.new(:title => "Lesson" ,
		:description => "yyy" ,
		:image_url => "zzz.jpg" )
		listing.price = -1
		assert listing.invalid?
		assert_equal "must be greater than or equal to 0.01" ,
		listing.errors[:price].join('; ' )
		listing.price = 0
		assert listing.invalid?
		assert_equal "must be greater than or equal to 0.01" ,
		listing.errors[:price].join('; ' )
		listing.price = 1
		assert listing.valid?
	end

end
