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
Education.create(:degree =>"bachelor's", :concentration =>"")
Education.create(:degree =>"bachelor's", :concentration =>"other")

#grad
Education.create(:degree =>"master's", :concentration =>"computer science")
#put 5 more concentrations here
Education.create(:degree =>"master's", :concentration =>"")
Education.create(:degree =>"master's", :concentration =>"other")

#----------------------------------------------------
#SKILL TABLE
Skill.create(:name =>"java", :level=>"beginner")
Skill.create(:name =>"java", :level=>"intermediate")
Skill.create(:name =>"java", :level=>"advanced")

Skill.create(:name =>"excel", :level=>"beginner")
Skill.create(:name =>"excel", :level=>"intermediate")
Skill.create(:name =>"excel", :level=>"advanced")
#put 25 more skill sets here
Skill.create(:name =>"", :level=>"")

#----------------------------------------------------
#TRAINING TABLE
Training.create(:name =>"network+")
Training.create(:name =>"security+")
Training.create(:name =>"salesforce")
Training.create(:name =>"six sigma")
Training.create(:name =>"PMP")
#put 25 more training
Training.create(:name =>"")

#----------------------------------------------------
#POSITION TABLE
Position.create(:name =>"q/a tester")
Position.create(:name =>"jr programmer")
Position.create(:name =>"sr programmer")
Position.create(:name =>"sales coach")
Position.create(:name =>"system analyst")
Position.create(:name =>"project manager")
#put 25 more positions
Position.create(:name =>"")