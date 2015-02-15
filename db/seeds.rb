# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Education.create(:degree =>"bachelors", :concentration =>"computer science")
Skill.create(:name =>"excel", :level=>"intermediate")
Training.create(:name =>"network+")
Position.create(:name =>"insider sales coach")
