# EMPLOYEE_SKILL TABLE
# Employee_skill.create(:employee_id =>"", :skill_id =>"")
# 
# ----------------------------------------------------
# EVALUATION TABLE
# Evaluation.create(:sdate =>"", :edate =>"", :communication =>"", :attitude =>"",:character =>"", :potential =>"", :performance =>"", :employee_id =>"", :position_id =>"")
# 
# ----------------------------------------------------

Employee.create(:email =>"anees.merzi@dell.com", :password =>"password", :fname =>"Anees", :lname =>"Merzi", :position_id =>"6")

#SUPPORT TABLES
#EDUCATION TABLE
#high school
#(id 1) (50 team leaders) 20 MGR, 50 SUP, 150 TL, 10 HR
Education.create(:degree =>"diploma/GED", :concentration =>"general studies")

#undergrad
#(id 2 - 11) (90 team leaders | 7 hr | 30 sup | 5 mgr = 132)
Education.create(:degree =>"bachelor's", :concentration =>"computer science")
Education.create(:degree =>"bachelor's", :concentration =>"accounting")
Education.create(:degree =>"bachelor's", :concentration =>"economics")
Education.create(:degree =>"bachelor's", :concentration =>"engineering")
Education.create(:degree =>"bachelor's", :concentration =>"finance")
Education.create(:degree =>"bachelor's", :concentration =>"hr management")
Education.create(:degree =>"bachelor's", :concentration =>"information systems")
Education.create(:degree =>"bachelor's", :concentration =>"management")
Education.create(:degree =>"bachelor's", :concentration =>"mathematics")
Education.create(:degree =>"bachelor's", :concentration =>"marketing")

#grad
#(id 12 - 17) (10 team leaders | 3 hr | 20 sup | 15 mgr = 48)
Education.create(:degree =>"master's", :concentration =>"computer science")
Education.create(:degree =>"master's", :concentration =>"information systems")
Education.create(:degree =>"master's", :concentration =>"business administration")
Education.create(:degree =>"master's", :concentration =>"hr management")
Education.create(:degree =>"master's", :concentration =>"engineering")
Education.create(:degree =>"master's", :concentration =>"project management")

#-----------------------------------------------------
#POSITION TABLE
#E POOL 5M + 1HR 
#(id 1 - 6)
Position.create(:name =>"ceo", :level =>"E", :role =>"Manager")
Position.create(:name =>"cmo", :level =>"E", :role =>"Manager")
Position.create(:name =>"cto", :level =>"E", :role =>"Manager")
Position.create(:name =>"iso", :level =>"E", :role =>"Manager")
Position.create(:name =>"cfo", :level =>"E", :role =>"Manager")
Position.create(:name =>"hro", :level =>"E", :role =>"Human Resources")

#D POOL 5M + 1HR
#(id 7 - 12)
Position.create(:name =>"director of sales", :level =>"D", :role =>"Manager")
Position.create(:name =>"director of it", :level =>"D", :role =>"Manager")
Position.create(:name =>"director of r&d", :level =>"D", :role =>"Manager")
Position.create(:name =>"director of security", :level =>"D", :role =>"Manager")
Position.create(:name =>"director of finance", :level =>"D", :role =>"Manager")
Position.create(:name =>"hr director", :level =>"D", :role =>"Human Resources")

#C POOL 5M + 20S + 1HR 
#(id 13 - 26)
#3 program managers | 2 is mgrs
Position.create(:name =>"program mgr", :level =>"C3", :role =>"Manager")
Position.create(:name =>"is mgr", :level =>"C3", :role =>"Manager")

#3 marketing managers
Position.create(:name =>"marketing manager", :level =>"C2", :role =>"Supervisor")

Position.create(:name =>"sr infrastructure architect", :level =>"C2", :role =>"Supervisor")
Position.create(:name =>"info security manager", :level =>"C2", :role =>"Supervisor")

#4 app managers
Position.create(:name =>"app manager", :level =>"C1", :role =>"Supervisor")
#2 net managers
Position.create(:name =>"net manager", :level =>"C1", :role =>"Supervisor")
#3 acct managers
Position.create(:name =>"sr account mgr", :level =>"C1", :role =>"Supervisor")
#2 fin managers
Position.create(:name =>"finance mgr", :level =>"C1", :role =>"Supervisor")
#2 sales managers
Position.create(:name =>"strategic sales mgr", :level =>"C1", :role =>"Supervisor")

Position.create(:name =>"analytics mgr", :level =>"C1", :role =>"Supervisor")
Position.create(:name =>"data scientist", :level =>"C1", :role =>"Supervisor")
Position.create(:name =>"sr procurement mgr", :level =>"C1", :role =>"Supervisor")

Position.create(:name =>"hr manager", :level =>"C1", :role =>"Human Resources")


#B POOL 5M+ 30S + 2HR
# (id 27 - 44) 

#5 project managers
Position.create(:name =>"project mgr", :level =>"B3", :role =>"Manager")

#2 sr prg
Position.create(:name =>"sr programmer", :level =>"B2", :role =>"Supervisor")
#3 sales mgr
Position.create(:name =>"sales manager", :level =>"B2", :role =>"Supervisor")
#2 sr mktr
Position.create(:name =>"sr marketer", :level =>"B2", :role =>"Supervisor")
#2 acct sup
Position.create(:name =>"account supervisior", :level =>"B2", :role =>"Supervisor")

Position.create(:name =>"customer service manager", :level =>"B2", :role =>"Supervisor")
Position.create(:name =>"db admin", :level =>"B2", :role =>"Supervisor")

#2 app eng
Position.create(:name =>"app engineer", :level =>"B1", :role =>"Supervisor")
#2 app des
Position.create(:name =>"app designer", :level =>"B1", :role =>"Supervisor")
#5 app dev
Position.create(:name =>"app developer", :level =>"B1", :role =>"Supervisor")
#2 sys analy
Position.create(:name =>"sys analyst", :level =>"B1", :role =>"Supervisor")
#3 sales coach
Position.create(:name =>"sales coach", :level =>"B1", :role =>"Supervisor")

Position.create(:name =>"sr q/a analyst", :level =>"B1", :role =>"Supervisor")
Position.create(:name =>"sr accountant", :level =>"B1", :role =>"Supervisor")
Position.create(:name =>"sr tax accountant", :level =>"B1", :role =>"Supervisor")
Position.create(:name =>"financial auditor", :level =>"B1", :role =>"Supervisor")
Position.create(:name =>"payroll supervisor", :level =>"B1", :role =>"Supervisor")

#2HR
Position.create(:name =>"hr supervisor", :level =>"B1", :role =>"Human Resources")

#A POOL 150TM + 5HR
#(id 45 - 73)
#2 spt
Position.create(:name =>"sr tech support", :level =>"A3", :role =>"Team Leader")
#15 sales
Position.create(:name =>"sales tm lead", :level =>"A3", :role =>"Team Leader")
#2 db
Position.create(:name =>"db analyst", :level =>"A3", :role =>"Team Leader")
#10 prg ana
Position.create(:name =>"programmer analyst", :level =>"A3", :role =>"Team Leader")
#8 soft
Position.create(:name =>"software tm lead", :level =>"A3", :role =>"Team Leader")
#10 hard
Position.create(:name =>"hardware tm lead", :level =>"A3", :role =>"Team Leader")
#2 data
Position.create(:name =>"data tm lead", :level =>"A3", :role =>"Team Leader")
#2 anal
Position.create(:name =>"analytic tm lead", :level =>"A3", :role =>"Team Leader")
#4 mob
Position.create(:name =>"mobile tm lead", :level =>"A3", :role =>"Team Leader")
#3 des
Position.create(:name =>"design tm lead", :level =>"A3", :role =>"Team Leader")
#3 mark
Position.create(:name =>"marketing tm lead", :level =>"A3", :role =>"Team Leader")
#2 email
Position.create(:name =>"email marketing lead", :level =>"A3", :role =>"Team Leader")
#2 soc
Position.create(:name =>"social tm lead", :level =>"A3", :role =>"Team Leader")
#3 q/a
Position.create(:name =>"q/a manager", :level =>"A3", :role =>"Team Leader")
#3 acc
Position.create(:name =>"sr accountant", :level =>"A3", :role =>"Team Leader")
#3 tax
Position.create(:name =>"sr tax accountant", :level =>"A3", :role =>"Team Leader")
#3 fin
Position.create(:name =>"financial analyst", :level =>"A3", :role =>"Team Leader")
#20 acct
Position.create(:name =>"account lead", :level =>"A3", :role =>"Team Leader")
#5 acct
Position.create(:name =>"account advisors", :level =>"A3", :role =>"Team Leader")
#5 admin
Position.create(:name =>"admin analyst", :level =>"A3", :role =>"Team Leader")
#5 net
Position.create(:name =>"network monitor", :level =>"A3", :role =>"Team Leader")
#3 infrastructure
Position.create(:name =>"infrastructure analyst", :level =>"A3", :role =>"Team Leader")
#5 cloud
Position.create(:name =>"cloud analyst", :level =>"A3", :role =>"Team Leader")
#5 security
Position.create(:name =>"security analyst", :level =>"A3", :role =>"Team Leader")
#5 event
Position.create(:name =>"event coordinator", :level =>"A3", :role =>"Team Leader")
#5 sales
Position.create(:name =>"sales trainor", :level =>"A3", :role =>"Team Leader")
#5 cust
Position.create(:name =>"customer service lead", :level =>"A3", :role =>"Team Leader")
#10 engineer
Position.create(:name =>"engineer lead", :level =>"A3", :role =>"Team Leader")

#5 HR
Position.create(:name =>"hr team lead", :level =>"A3", :role =>"Human Resources")

#-----------------------------------------------------
#SKILL TABLE
#technical
#(id 1 - 18)
Skill.create(:name =>"web design", :stype =>"technical")

Skill.create(:name =>"web development", :stype =>"technical")
Skill.create(:name =>"user experience", :stype =>"technical")
Skill.create(:name =>"procedural programming", :stype =>"technical")
Skill.create(:name =>"object oriented programming", :stype =>"technical")
Skill.create(:name =>"scripting languages", :stype =>"technical")

Skill.create(:name =>"application security", :stype =>"technical")
Skill.create(:name =>"device mgmt", :stype =>"technical")

Skill.create(:name =>"mobile app development", :stype =>"technical")
Skill.create(:name =>"mobile app design", :stype =>"technical")

Skill.create(:name =>"sql", :stype =>"technical")
Skill.create(:name =>"big data", :stype =>"technical")
Skill.create(:name =>"nosql", :stype =>"technical")
Skill.create(:name =>"analytics", :stype =>"technical")

Skill.create(:name =>"db admin", :stype =>"technical")
Skill.create(:name =>"cloud admin", :stype =>"technical")
Skill.create(:name =>"networking", :stype =>"technical")
Skill.create(:name =>"sharepoint", :stype =>"technical")

#business
#(id 19 - 41)
Skill.create(:name =>"presenter", :stype =>"business")
Skill.create(:name =>"leadership", :stype =>"business")
Skill.create(:name =>"team builder", :stype =>"business")
Skill.create(:name =>"problem solver", :stype =>"business")
Skill.create(:name =>"coordinator", :stype =>"business")

Skill.create(:name =>"business intel", :stype =>"business")
Skill.create(:name =>"risk management", :stype =>"business")
Skill.create(:name =>"project management", :stype =>"business")
Skill.create(:name =>"program management", :stype =>"business")
Skill.create(:name =>"scrum", :stype =>"business")
Skill.create(:name =>"lean methodologies", :stype =>"business")
Skill.create(:name =>"strategic planning", :stype =>"business")
Skill.create(:name =>"flow charts", :stype =>"technical")

Skill.create(:name =>"adobe suite", :stype =>"business")
Skill.create(:name =>"microsoft suite", :stype =>"business")
Skill.create(:name =>"excel reporting", :stype =>"business")
Skill.create(:name =>"sap", :stype =>"business")

Skill.create(:name =>"social media", :stype =>"business")
Skill.create(:name =>"interpret analytics", :stype =>"business")
Skill.create(:name =>"product marketing", :stype =>"business")

Skill.create(:name =>"employee tracking", :stype =>"business")
Skill.create(:name =>"payroll reporting", :stype =>"business")
Skill.create(:name =>"financial auditing", :stype =>"business")

#----------------------------------------------------