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
Skill.create(:name =>"java", :level=>"beginner")
Skill.create(:name =>"java", :level=>"intermediate")
Skill.create(:name =>"java", :level=>"advanced")

Skill.create(:name =>"excel", :level=>"beginner")
Skill.create(:name =>"excel", :level=>"intermediate")
Skill.create(:name =>"excel", :level=>"advanced")
#put 25 more skill sets here
Skill.create(:name =>"Business Intelligence", :level=>"beginner")
Skill.create(:name =>"Business Intelligence", :level=>"intermediate")
Skill.create(:name =>"Business Intelligence", :level=>"advanced")

Skill.create(:name =>"SQl Server 2012", :level=>"beginner")
Skill.create(:name =>"SQl Server 2012", :level=>"intermediate")
Skill.create(:name =>"SQl Server 2012", :level=>"advanced")

Skill.create(:name =>"php", :level=>"beginner")
Skill.create(:name =>"php", :level=>"intermediate")
Skill.create(:name =>"php", :level=>"advanced")

Skill.create(:name =>"C#", :level=>"beginner")
Skill.create(:name =>"C#", :level=>"intermediate")
Skill.create(:name =>"C#", :level=>"advanced")

Skill.create(:name =>"VB.Net", :level=>"beginner")
Skill.create(:name =>"VB.Net", :level=>"intermediate")
Skill.create(:name =>"VB.Net", :level=>"advanced")

Skill.create(:name =>"Oracle 12c", :level=>"beginner")
Skill.create(:name =>"Oracle 12c", :level=>"intermediate")
Skill.create(:name =>"Oracle 12c", :level=>"advanced")

Skill.create(:name =>"SAP", :level=>"beginner")
Skill.create(:name =>"SAP", :level=>"intermediate")
Skill.create(:name =>"SAP", :level=>"advanced")

Skill.create(:name =>"Ruby on Rails", :level=>"beginner")
Skill.create(:name =>"Ruby on Rails", :level=>"intermediate")
Skill.create(:name =>"Ruby on Rails", :level=>"advanced")

Skill.create(:name =>"project management", :level=>"beginner")
Skill.create(:name =>"project management", :level=>"intermediate")
Skill.create(:name =>"project management", :level=>"advanced")

Skill.create(:name =>"HTML5/CSS3", :level=>"beginner")
Skill.create(:name =>"HTML5/CSS3", :level=>"intermediate")
Skill.create(:name =>"HTML5/CSS3", :level=>"advanced")

Skill.create(:name =>"Webservices", :level=>"beginner")
Skill.create(:name =>"Webservices", :level=>"intermediate")
Skill.create(:name =>"Webservices", :level=>"advanced")

Skill.create(:name =>"QTP", :level=>"beginner")
Skill.create(:name =>"QTP", :level=>"intermediate")
Skill.create(:name =>"QTP", :level=>"advanced")

Skill.create(:name =>"Selenium", :level=>"beginner")
Skill.create(:name =>"Selenium", :level=>"intermediate")
Skill.create(:name =>"Selenium", :level=>"advanced")

Skill.create(:name =>"MySQL", :level=>"beginner")
Skill.create(:name =>"MySQL", :level=>"intermediate")
Skill.create(:name =>"MySQL", :level=>"advanced")

Skill.create(:name =>"Leadership", :level=>"beginner")
Skill.create(:name =>"Leadership", :level=>"intermediate")
Skill.create(:name =>"Leadership", :level=>"advanced")

Skill.create(:name =>"ASP.Net", :level=>"beginner")
Skill.create(:name =>"ASP.Net", :level=>"intermediate")
Skill.create(:name =>"ASP.Net", :level=>"advanced")

Skill.create(:name =>"XML", :level=>"beginner")
Skill.create(:name =>"XML", :level=>"intermediate")
Skill.create(:name =>"XML", :level=>"advanced")

Skill.create(:name =>"Data Warehousing", :level=>"beginner")
Skill.create(:name =>"Data Warehousing", :level=>"intermediate")
Skill.create(:name =>"Data Warehousing", :level=>"advanced")

Skill.create(:name =>"Agile Testing", :level=>"beginner")
Skill.create(:name =>"Agile Testing", :level=>"intermediate")
Skill.create(:name =>"Agile Testing", :level=>"advanced")

Skill.create(:name =>"Performance Testing", :level=>"beginner")
Skill.create(:name =>"Performance Testing", :level=>"intermediate")
Skill.create(:name =>"Performance Testing", :level=>"advanced")

Skill.create(:name =>"Strategic Planning", :level=>"beginner")
Skill.create(:name =>"Strategic Planning", :level=>"intermediate")
Skill.create(:name =>"Strategic Planning", :level=>"advanced")

Skill.create(:name =>"Javascript", :level=>"beginner")
Skill.create(:name =>"Javascript", :level=>"intermediate")
Skill.create(:name =>"Javascript", :level=>"advanced")

Skill.create(:name =>"AJAX", :level=>"beginner")
Skill.create(:name =>"AJAX", :level=>"intermediate")
Skill.create(:name =>"AJAX", :level=>"advanced")

Skill.create(:name =>"Python", :level=>"beginner")
Skill.create(:name =>"Python", :level=>"intermediate")
Skill.create(:name =>"Python", :level=>"advanced")

Skill.create(:name =>"Adobe", :level=>"beginner")
Skill.create(:name =>"Adobe", :level=>"intermediate")
Skill.create(:name =>"Adobe", :level=>"advanced")


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
