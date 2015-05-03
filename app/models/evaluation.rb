	class Evaluation < ActiveRecord::Base
before_save :insertScore

	belongs_to :employee
	belongs_to :position
	
	def pos_name
		position.position_name
	end
	
	def emp_name
		employee.employee_name
	end
	def findRater
		a = rater_id
		b = employee.id
		data = Employee.select(:fname).where("a == b")
		return data
	end
	def p
		performance = ((self.gScore/5) * 0.5) + ((self.qScore/5) * 0.3) + ((self.iScore/5) * 0.2)
		p = performance * 0.35
	end
	def l
		leadership = ((self.rScore/5) * 0.275) + ((self.aScore/5) * 0.275) + ((self.mScore/5) * 0.25) + ((self.isScore/5) * 0.2)
		l = leadership * 0.25	
	end
	def m
		management = ((self.owScore/5) * 0.3) + ((self.dScore/5) * 0.3) + ((self.oScore/5) * 0.4)
		m = management * 0.25
	end
	def c
		competence = ((self.kScore/5) * 0.25) + ((self.pScore/5 ) * 0.65) + ((self.lScore/5) * 0.1)
		c = competence * 0.15
	end
	def per
		if p > 0.34
			per = (p * 100)*2.86
		else
			per = 100
		end
	end
	def lea
		lea = (l * 100)*4
	end
	def mgm
		mgm = (m * 100)*4
	end
	def com
		com = (c * 100)*6.67
	end
	def evalScore
		self.evalScore = (p + l + m + c)*100
	end
	def friendlyScale
		if self.evalScore > 70
			"excels"
		elsif self.evalScore > 30
			"attains"
		else		
			"needs improvement"
		end
	end
	def insertScore
  		evalScore
  		return true
	end
	def self.search searchie
  		where(['evalScore LIKE ?', "%#{searchie}%"])
  	end
end
