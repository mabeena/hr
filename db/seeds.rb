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
Skill.create(:name =>"java", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"java", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"java", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"excel", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"excel", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"excel", :level=>"advanced", :stype=>"technical")
#put 25 more skill sets here
Skill.create(:name =>"Business Intelligence", :level=>"beginner", :stype=>"non-technical")
Skill.create(:name =>"Business Intelligence", :level=>"intermediate", :stype=>"non-technical")
Skill.create(:name =>"Business Intelligence", :level=>"advanced", :stype=>"non-technical")

Skill.create(:name =>"SQl Server 2012", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"SQl Server 2012", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"SQl Server 2012", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"php", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"php", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"php", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"C#", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"C#", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"C#", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"VB.Net", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"VB.Net", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"VB.Net", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Oracle 12c", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Oracle 12c", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Oracle 12c", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"SAP", :level=>"beginner", :stype=>"non-technical")
Skill.create(:name =>"SAP", :level=>"intermediate", :stype=>"non-technical")
Skill.create(:name =>"SAP", :level=>"advanced", :stype=>"non-technical")

Skill.create(:name =>"Ruby on Rails", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Ruby on Rails", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Ruby on Rails", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"project management", :level=>"beginner", :stype=>"non-technical")
Skill.create(:name =>"project management", :level=>"intermediate", :stype=>"non-technical")
Skill.create(:name =>"project management", :level=>"advanced", :stype=>"non-technical")

Skill.create(:name =>"HTML5/CSS3", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"HTML5/CSS3", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"HTML5/CSS3", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Webservices", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Webservices", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Webservices", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"QTP", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"QTP", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"QTP", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Selenium", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Selenium", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Selenium", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"MySQL", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"MySQL", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"MySQL", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Leadership", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Leadership", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Leadership", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"ASP.Net", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"ASP.Net", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"ASP.Net", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"XML", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"XML", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"XML", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Data Warehousing", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Data Warehousing", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Data Warehousing", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Agile Testing", :level=>"beginner", :stype=>"non-technical")
Skill.create(:name =>"Agile Testing", :level=>"intermediate", :stype=>"non-technical")
Skill.create(:name =>"Agile Testing", :level=>"advanced", :stype=>"non-technical")

Skill.create(:name =>"Performance Testing", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Performance Testing", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Performance Testing", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Strategic Planning", :level=>"beginner", :stype=>"non-technical")
Skill.create(:name =>"Strategic Planning", :level=>"intermediate", :stype=>"non-technical")
Skill.create(:name =>"Strategic Planning", :level=>"advanced", :stype=>"non-technical")

Skill.create(:name =>"Javascript", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Javascript", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Javascript", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"AJAX", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"AJAX", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"AJAX", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Python", :level=>"beginner", :stype=>"technical")
Skill.create(:name =>"Python", :level=>"intermediate", :stype=>"technical")
Skill.create(:name =>"Python", :level=>"advanced", :stype=>"technical")

Skill.create(:name =>"Adobe", :level=>"beginner", :stype=>"non-technical")
Skill.create(:name =>"Adobe", :level=>"intermediate", :stype=>"non-technical")
Skill.create(:name =>"Adobe", :level=>"advanced", :stype=>"non-technical")


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
