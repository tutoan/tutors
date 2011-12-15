# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Listing.delete_all

Listing.create(:title => 'Math Tutor' ,
	:description =>
	%{<p>
	Tutor for Geometry, Algebra, and Calculus in Albuquerque, NM. 5+ years of experience.
	</p>},
	:image_url => 'math.jpg' ,
	:price => 30.00)
	
Listing.create(:title => 'Tennis Instructor' ,
	:description =>
	%{<p>
	Tennis lessons for kids ages 5 and up. Lessons are held in groups every Wednesdays from 4PM to 6PM at Jerry Cline, Albuquerque, NM.
	</p>},
	:image_url => 'tennis.jpg' ,
	:price => 25.00)