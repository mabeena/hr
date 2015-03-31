namespace :db do
  task populate: :environment do
  require 'ffaker'

#Employee Table
	#230 employees
	
	#145 TLs
	145.times do
	fname = FFaker::Name.first_name
	lname = FFaker::Name.last_name
		 Employee.create(
				password: 'password',
				fname: fname,
				lname: lname,
				email: fname + '.' + lname + dell,
				position_id: tl_rand_number.sample
			)
	end
	#5 TL (HR)
	5.times do
	fname = FFaker::Name.first_name
	lname = FFaker::Name.last_name
		 Employee.create(
				password: 'password',
				fname: fname,
				lname: lname,
				email: fname + '.' + lname + dell,
				position_id: 73
			)
	end
	#17 TOP SUP
	17.times do
	fname = FFaker::Name.first_name
	lname = FFaker::Name.last_name
		 Employee.create(
				password: 'password',
				fname: fname,
				lname: lname,
				email: fname + '.' + lname + dell,
				position_id: sup_rand_numberOne.sample
			)
	end
	#48 LOWER SUP
	48.times do
	fname = FFaker::Name.first_name
	lname = FFaker::Name.last_name
		 Employee.create(
				password: 'password',
				fname: fname,
				lname: lname,
				email: fname + '.' + lname + dell,
				position_id: sup_rand_numberTwo.sample
			)
	end
	#2 Sup (HR)
	2.times do
	fname = FFaker::Name.first_name
	lname = FFaker::Name.last_name
		 Employee.create(
				password: 'password',
				fname: fname,
				lname: lname,
				email: fname + '.' + lname + dell,
				position_id: 44
			)
	end	
	#1 Sup (HR)
	1.times do
	fname = FFaker::Name.first_name
	lname = FFaker::Name.last_name
		 Employee.create(
				password: 'password',
				fname: fname,
				lname: lname,
				email: fname + '.' + lname + dell,
				position_id: 26
			)
	end
	#12 exec
	(1..12).each do |n|
		fname = FFaker::Name.first_name
		lname = FFaker::Name.last_name
		position_id = n
		Employee.create(
			password: 'password',
			fname: fname,
			lname: lname,
			email: fname + '.' + lname + dell,
			position_id: position_id
		)
	end

#Evaluation Table
#	x.times do
		
#	end
	
#EmployeeEducation Table
	#50 highschool
	50.times do
		(1..50).each do |n|
			employee_id = n
			EmployeeEducation.create(
				employee_id: employee_id,
				education_id: 1
		  	)
		end
	end
	#132 bachelors
	132.times do
		(51..182).each do |n|
			employee_id = n
			EmployeeEducation.create(
				employee_id: employee_id,
				education_id: bach_rand_number.sample
		  	)
		end
	end
	#48 masters
	48.times do
		(183..230).each do |n|
			employee_id = n
			EmployeeEducation.create(
				employee_id: employee_id,
				education_id: mast_rand_number.sample
		  	)
		end
	end	
  end
end

#custom domain name
def dell
	['@dell.com'].sample
end
def bach_rand_number
	(2..11).to_a.shuffle
end
def mast_rand_number
	(12..17).to_a.shuffle
end
def tl_rand_number
	(45..72).to_a.shuffle
end
def sup_rand_numberOne
	(13..24).to_a.shuffle
end
def sup_rand_numberTwo
	(27..43).to_a.shuffle
end
