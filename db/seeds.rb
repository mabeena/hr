# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#EDUCATION TABLE
#high school
Education.create(:degree =>"diploma/GED", :concentration =>"general studies")

#undergrad
Education.create(:degree =>"bachelor's", :concentration =>"computer science")
#put 10 more major concentrations here 
Education.create(:degree =>"bachelor's", :concentration =>"accounting")
Education.create(:degree =>"bachelor's", :concentration =>"economics")
Education.create(:degree =>"bachelor's", :concentration =>"engineering")
Education.create(:degree =>"bachelor's", :concentration =>"english")
Education.create(:degree =>"bachelor's", :concentration =>"finance")
Education.create(:degree =>"bachelor's", :concentration =>"human resource management")
Education.create(:degree =>"bachelor's", :concentration =>"information system")
Education.create(:degree =>"bachelor's", :concentration =>"management")
Education.create(:degree =>"bachelor's", :concentration =>"mathematics")
Education.create(:degree =>"bachelor's", :concentration =>"physics")


#grad
Education.create(:degree =>"master's", :concentration =>"computer science")
#put 5 more concentrations here
Education.create(:degree =>"master's", :concentration =>"information system")
Education.create(:degree =>"master's", :concentration =>"business administration")
Education.create(:degree =>"master's", :concentration =>"human resource management")
Education.create(:degree =>"master's", :concentration =>"engineering")
Education.create(:degree =>"master's", :concentration =>"project management")


#----------------------------------------------------
#SKILL TABLE
Skill.create(:name =>"java", :stype=>"technical")
Skill.create(:name =>"excel", :stype=>"technical")
#put 25 more skill sets here
Skill.create(:name =>"Business Intelligence", :stype=>"non-technical")
Skill.create(:name =>"SQl Server 2012", :stype=>"technical")
Skill.create(:name =>"php", :stype=>"technical")
Skill.create(:name =>"C#", :stype=>"technical")
Skill.create(:name =>"VB.Net", :stype=>"technical")
Skill.create(:name =>"Oracle 12c", :stype=>"technical")
Skill.create(:name =>"SAP", :stype=>"non-technical")
Skill.create(:name =>"Ruby on Rails", :stype=>"technical")
Skill.create(:name =>"project management", :stype=>"non-technical")
Skill.create(:name =>"HTML5/CSS3", :stype=>"technical")
Skill.create(:name =>"Webservices", :stype=>"technical")
Skill.create(:name =>"QTP", :stype=>"technical")
Skill.create(:name =>"Selenium", :stype=>"technical")
Skill.create(:name =>"MySQL", :stype=>"technical")
Skill.create(:name =>"Leadership", :stype=>"technical")
Skill.create(:name =>"ASP.Net", :stype=>"technical")
Skill.create(:name =>"XML", :stype=>"technical")
Skill.create(:name =>"Data Warehousing", :stype=>"technical")
Skill.create(:name =>"Agile Testing", :stype=>"non-technical")
Skill.create(:name =>"Performance Testing", :stype=>"technical")
Skill.create(:name =>"Strategic Planning", :stype=>"non-technical")
Skill.create(:name =>"Javascript", :stype=>"technical")
Skill.create(:name =>"AJAX", :stype=>"technical")
Skill.create(:name =>"Python", :stype=>"technical")
Skill.create(:name =>"Adobe", :stype=>"non-technical")


#----------------------------------------------------
#TRAINING TABLE
Training.create(:name =>"network+")
Training.create(:name =>"security+")
Training.create(:name =>"salesforce")
Training.create(:name =>"six sigma")
Training.create(:name =>"PMP")
#put 25 more training
Training.create(:name =>"MCSE")
Training.create(:name =>"CCNP")
Training.create(:name =>"RHCE")
Training.create(:name =>"CCIE")
Training.create(:name =>"OCP")
Training.create(:name =>"ODA")
Training.create(:name =>"OCA")
Training.create(:name =>"MSCA")
Training.create(:name =>"MSCE")
Training.create(:name =>"CMA")
Training.create(:name =>"CMDBA")
Training.create(:name =>"CMDEV")
Training.create(:name =>"MCSD")
Training.create(:name =>"ACE")
Training.create(:name =>"ISC2")
Training.create(:name =>"OCPJP")
Training.create(:name =>"OCMJD")
Training.create(:name =>"MCTS")
Training.create(:name =>"MCPD")
Training.create(:name =>"ISTQB")
Training.create(:name =>"CSTE")
Training.create(:name =>"HP AIS")
Training.create(:name =>"HP ASE")
Training.create(:name =>"SMP")
Training.create(:name =>"SPP")
Training.create(:name =>"SPA")


#----------------------------------------------------
#POSITION TABLE


Position.create(:name =>"sales coach")
Position.create(:name =>"system analyst")
Position.create(:name =>"project manager")
#put 25 more positions
Position.create(:name =>"database administrator")
Position.create(:name =>"database analyst")
Position.create(:name =>"information systems manager")
Position.create(:name =>"systems programmer")
Position.create(:name =>"applications program manager")
Position.create(:name =>"programmer analyst")
Position.create(:name =>"jr programmer")
Position.create(:name =>"sr programmer")
Position.create(:name =>"q/a analyst")
Position.create(:name =>"senior q/a analyst")
Position.create(:name =>"q/a manager")
Position.create(:name =>"product applications engineer")
Position.create(:name =>"product applications manager")
Position.create(:name =>"sales representative")
Position.create(:name =>"senior sales representative")
Position.create(:name =>"telemarketing representative")
Position.create(:name =>"senior telemarketing representative")
Position.create(:name =>"telesales manager")
Position.create(:name =>"account supervisior")
Position.create(:name =>"account manager")
Position.create(:name =>"technical support")
Position.create(:name =>"customer service")
Position.create(:name =>"hr representative")
Position.create(:name =>"senior hr representative")
Position.create(:name =>"hr manager")
Position.create(:name =>"accountant")
Position.create(:name =>"tax accountant")
Position.create(:name =>"senior accountant")
Position.create(:name =>"financial controller")
Position.create(:name =>"finance manager")
