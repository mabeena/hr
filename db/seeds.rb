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
Education.create(:degree =>"bachelor's", :concentration =>"hr management")
Education.create(:degree =>"bachelor's", :concentration =>"information system")
Education.create(:degree =>"bachelor's", :concentration =>"management")
Education.create(:degree =>"bachelor's", :concentration =>"mathematics")
Education.create(:degree =>"bachelor's", :concentration =>"physics")


#grad
Education.create(:degree =>"master's", :concentration =>"computer science")
#put 5 more concentrations here
Education.create(:degree =>"master's", :concentration =>"information system")
Education.create(:degree =>"master's", :concentration =>"business administration")
Education.create(:degree =>"master's", :concentration =>"hr management")
Education.create(:degree =>"master's", :concentration =>"engineering")
Education.create(:degree =>"master's", :concentration =>"project management")


#----------------------------------------------------
#SKILL TABLE
#please put more skills under each category 

#technical
Skill.create(:name =>"sql server 2012", :stype=>"technical")
Skill.create(:name =>"php", :stype=>"technical")
Skill.create(:name =>"c#", :stype=>"technical")
Skill.create(:name =>"vb.net", :stype=>"technical")
Skill.create(:name =>"oracle 12c", :stype=>"technical")
Skill.create(:name =>"sap", :stype=>"non-technical")
Skill.create(:name =>"ruby on rails", :stype=>"technical")
Skill.create(:name =>"java", :stype=>"technical")
Skill.create(:name =>"excel", :stype=>"technical")
Skill.create(:name =>"html5/css3", :stype=>"technical")
Skill.create(:name =>"webservices", :stype=>"technical")
Skill.create(:name =>"qtp", :stype=>"technical")
Skill.create(:name =>"selenium", :stype=>"technical")
Skill.create(:name =>"mysql", :stype=>"technical")
Skill.create(:name =>"leadership", :stype=>"technical")
Skill.create(:name =>"asp.net", :stype=>"technical")
Skill.create(:name =>"javascript", :stype=>"technical")
Skill.create(:name =>"ajax", :stype=>"technical")
Skill.create(:name =>"python", :stype=>"technical")
Skill.create(:name =>"xml", :stype=>"technical")
Skill.create(:name =>"data warehousing", :stype=>"technical")
Skill.create(:name =>"q/a testing", :stype=>"technical")

#non-technical
Skill.create(:name =>"business intel", :stype=>"non-technical")
Skill.create(:name =>"project management", :stype=>"non-technical")
Skill.create(:name =>"agile testing", :stype=>"non-technical")
Skill.create(:name =>"strategic planning", :stype=>"non-technical")
Skill.create(:name =>"adobe", :stype=>"non-technical")
Skill.create(:name =>"json", :stype=>"technical")


#----------------------------------------------------
#TRAINING TABLE
Training.create(:name =>"network+")
Training.create(:name =>"security+")
Training.create(:name =>"salesforce")
Training.create(:name =>"six sigma")
Training.create(:name =>"pmp")
Training.create(:name =>"mcse")
Training.create(:name =>"ccnp")
Training.create(:name =>"rhce")
Training.create(:name =>"ccie")
Training.create(:name =>"ocp")
Training.create(:name =>"oda")
Training.create(:name =>"oca")
Training.create(:name =>"msca")
Training.create(:name =>"msce")
Training.create(:name =>"cma")
Training.create(:name =>"cmdba")
Training.create(:name =>"cmdev")
Training.create(:name =>"mcsd")
Training.create(:name =>"ace")
Training.create(:name =>"isc2")
Training.create(:name =>"cissp")
Training.create(:name =>"casp")
Training.create(:name =>"ceh")
Training.create(:name =>"a+")
Training.create(:name =>"sales training")
Training.create(:name =>"cste")
Training.create(:name =>"hp ais")
Training.create(:name =>"hp ase")
Training.create(:name =>"smp")
Training.create(:name =>"spp")
Training.create(:name =>"spa")


#----------------------------------------------------
#POSITION TABLE
#please put at least 10 positions under each category; try to get a good range of positions 
#from lower-level to directors and c-level execs

#sales
Position.create(:name =>"sales coach", :segment =>"sales")
Position.create(:name =>"system analyst", :segment =>"sales")
Position.create(:name =>"project manager", :segment =>"sales")
Position.create(:name =>"sales representative", :segment =>"sales")
Position.create(:name =>"senior sales representative", :segment =>"sales")
Position.create(:name =>"telemarketing representative", :segment =>"sales")
Position.create(:name =>"senior telemarketing representative", :segment =>"sales")
Position.create(:name =>"telesales manager", :segment =>"sales")
Position.create(:name =>"technical support", :segment =>"sales")
Position.create(:name =>"customer service", :segment =>"sales")

#marketing

#r&d
Position.create(:name =>"database administrator", :segment =>"research & development")
Position.create(:name =>"database analyst", :segment =>"research & development")
Position.create(:name =>"information systems manager", :segment =>"research & development")
Position.create(:name =>"systems programmer", :segment =>"research & development")
Position.create(:name =>"applications program manager", :segment =>"research & development")
Position.create(:name =>"programmer analyst", :segment =>"research & development")
Position.create(:name =>"jr programmer", :segment =>"research & development")
Position.create(:name =>"sr programmer", :segment =>"research & development")
Position.create(:name =>"q/a analyst", :segment =>"research & development")
Position.create(:name =>"senior q/a analyst", :segment =>"research & development")
Position.create(:name =>"q/a manager", :segment =>"research & development")
Position.create(:name =>"product applications engineer", :segment =>"research & development")
Position.create(:name =>"product applications manager", :segment =>"research & development")

#finance
Position.create(:name =>"accountant", :segment =>"finance")
Position.create(:name =>"tax accountant", :segment =>"finance")
Position.create(:name =>"senior accountant", :segment =>"finance")
Position.create(:name =>"financial controller", :segment =>"finance")
Position.create(:name =>"finance manager", :segment =>"finance")

#procurement
Position.create(:name =>"account supervisior", :segment =>"procurement")
Position.create(:name =>"account manager", :segment =>"procurement")

#hr
Position.create(:name =>"hr representative", :segment =>"human resources")
Position.create(:name =>"senior hr representative", :segment =>"human resources")
Position.create(:name =>"hr manager", :segment =>"human resources")

