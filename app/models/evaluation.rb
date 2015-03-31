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
	
	def p
		performance = ((self.gScore/5) * 0.5) + ((self.qScore/5) * 0.3) + ((self.iScore/5) * 0.2)
		p = performance * 0.35
	end
	def l
		leadership = ((self.rScore/5) * 0.275) + ((self.aScore/5) * 0.275) + ((self.mScore/5) * 0.25) 
		+ ((self.isScore/5) * 0.2)
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
	def evalScore
		evalScore = (p + l + m + c)*100
	end
	def insertScore
  		self.evalScore = (p + l + m + c)*100
  		return true
	end
end
