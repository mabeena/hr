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
	(1..218).each do |n|
		employee_id = n
		Evaluation.create(
			gScore: score_num.sample,
			qScore: score_num.sample,
			iScore: score_num.sample,
			rScore: score_num.sample,
			aScore: score_num.sample,
			mScore: score_num.sample,
			isScore: score_num.sample,
			owScore: score_num.sample,
			dScore: score_num.sample,
			oScore: score_num.sample,
			kScore: score_num.sample,
			pScore: score_num.sample,
			lScore: score_num.sample,
			employee_id: employee_id,
			rater_id: eval_number.sample
		)
	end

	(219..224).each do |n|
		employee_id = n
		Evaluation.create(
			gScore: 5,
			qScore: 5,
			iScore: 5,
			rScore: 5,
			aScore: 5,
			mScore: 5,
			isScore: 5,
			owScore: 5,
			dScore: 5,
			oScore: 5,
			kScore: 5,
			pScore: 5,
			lScore: 5,
			employee_id: employee_id,
			rater_id: 219
		)
	end	
	(225..231).each do |n|
		employee_id = n
		Evaluation.create(
			gScore: score_numTwo.sample,
			qScore: score_numTwo.sample,
			iScore: score_numTwo.sample,
			rScore: score_numTwo.sample,
			aScore: score_numTwo.sample,
			mScore: score_numTwo.sample,
			isScore: score_numTwo.sample,
			owScore: score_numTwo.sample,
			dScore: score_numTwo.sample,
			oScore: score_numTwo.sample,
			kScore: score_numTwo.sample,
			pScore: score_numTwo.sample,
			lScore: score_numTwo.sample,
			employee_id: employee_id,
			rater_id: eval_number.sample
		)
	end
	
#EmployeeEducation Table
50 highschool
	50.times do
		(1..50).each do |n|
			employee_id = n
			EmployeeEducation.create(
				employee_id: employee_id,
				education_id: 1
		  	)
		end
	end
132 bachelors
	132.times do
		(51..182).each do |n|
			employee_id = n
			EmployeeEducation.create(
				employee_id: employee_id,
				education_id: bach_rand_number.sample
		  	)
		end
	end
48 masters
	48.times do
		(183..230).each do |n|
			employee_id = n
			EmployeeEducation.create(
				employee_id: employee_id,
				education_id: mast_rand_number.sample
		  	)
		end
	end
	
	#employee_skills
	400.times do
		EmployeeSkill.create(
			employee_id: emp_rand_number.sample,
			skill_id: skill_number.sample
		)
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
def eval_number
	(151..231).to_a.shuffle
end
def score_num
	[5,5,5,5,5,5,5,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1].to_a.shuffle
end
def score_numTwo
	[3,3,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1].to_a.shuffle
end
def eval_score
	[60,70,80,90,100].to_a.shuffle
end
def emp_rand_number
	(1..231).to_a.shuffle
end
def skill_number
	(1..41).to_a.shuffle
end