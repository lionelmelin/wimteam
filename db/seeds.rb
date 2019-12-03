# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "Destroying all existing db..."
SkillSet.destroy_all
UserWalk.destroy_all
Walk.destroy_all
Position.destroy_all
Team.destroy_all
Skill.destroy_all
User.destroy_all


puts "Seeding users..."
pierre = User.create!(purpose: "Recruitment", email: "pierre@giggle.com", password: "password", first_name: "Pierre",
  last_name: "Nevada", gender: "male", birth_date: "01/02/1990", graduation_date: "30/06/2013")
pierre_pic = URI.open("https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
pierre.photo.attach(io: pierre_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

laura = User.create!(purpose: "Discovery", email: "laura@giggle.com", password: "password", first_name: "Laura",
  last_name: "Jane", gender: "female", birth_date: "30/07/1990", graduation_date: "30/06/2014")
laura_pic = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
laura.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

david = User.create!(purpose: "Recruitment", email: "david@giggle.com", password: "password", first_name: "David",
  last_name: "Elliot", gender: "male", birth_date: "23/03/1976", graduation_date: "30/06/2000")
david_pic = URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
david.photo.attach(io: david_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

lionel = User.create!(purpose: "Discovery", email: "lionel@giggle.com", password: "password", first_name: "Lionel",
  last_name: "Minton", gender: "male", birth_date: "01/02/1990", graduation_date: "30/06/2013")
lionel_pic = URI.open("https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
lionel.photo.attach(io: lionel_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

laetitia = User.create!(purpose: "Discovery", email: "laetitia@giggle.com", password: "password", first_name: "Laetitia",
  last_name: "Delta", gender: "female", birth_date: "12/07/1992", graduation_date: "30/06/2016")
laetitia_pic = URI.open("https://images.unsplash.com/photo-1504703395950-b89145a5425b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
laetitia.photo.attach(io: laetitia_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

john = User.create!(purpose: "Recruitment", email: "john@giggle.com", password: "password", first_name: "John",
  last_name: "Barrinston", gender: "male", birth_date: "07/03/1985", graduation_date: "30/06/2010")
john_pic = URI.open("https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60")
john.photo.attach(io: john_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

jenny = User.create!(purpose: "Discovery", email: "jenny@giggle.com", password: "password", first_name: "Jenny",
  last_name: "Adam", gender: "female", birth_date: "01/02/1995", graduation_date: "30/06/2018")
jenny_pic = URI.open("https://images.unsplash.com/photo-1484863137850-59afcfe05386?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60")
jenny.photo.attach(io: jenny_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

charles = User.create!(purpose: "Recruitment", email: "charles@giggle.com", password: "password", first_name: "Charles",
  last_name: "Day", gender: "male", birth_date: "07/03/1985", graduation_date: "30/06/2010")
charles_pic = URI.open("https://images.unsplash.com/flagged/photo-1561530822-923d268fa0a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
charles.photo.attach(io: charles_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

julien = User.create!(purpose: "Discovery", email: "julien@giggle.com", password: "password", first_name: "Julien",
  last_name: "Menisson", gender: "male", birth_date: "02/11/1992", graduation_date: "30/06/2016")
julien_pic = URI.open("https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80")
julien.photo.attach(io: julien_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

elisa = User.create!(purpose: "Recruitment", email: "elisa@giggle.com", password: "password", first_name: "Elisa",
  last_name: "Laster", gender: "female", birth_date: "07/04/1995", graduation_date: "30/06/2018")
elisa_pic = URI.open("https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
elisa.photo.attach(io: elisa_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

max = User.create!(purpose: "Discovery", email: "max@giggle.com", password: "password", first_name: "Max",
  last_name: "Dilligham", gender: "male", birth_date: "07/05/1994", graduation_date: "30/06/2017")
max_pic = URI.open("https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
max.photo.attach(io: max_pic, filename: 'some-image.jpg', content_type: 'image/jpg')


puts "Seeding teams..."
marketing = Team.create!(name: "Marketing", location: "Paris", department: "Sales & Marketing",
  description: "Within the Sales & Marketing department, the Marketing team is \
  in charge of defining the Company's marketing strategy, and of running analyses \
  on the company's operating datas.")
marketing_pic = URI.open("https://images.unsplash.com/photo-1557804506-669a67965ba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
marketing.photo.attach(io: marketing_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

data = Team.create!(name: "Data", location: "New York", department: "IT",
  description: "With the IT department, the Data team is in charge of gathering, \
  cleaning, modelling and analysing all the data produced by the Company's activities.")
data_pic = URI.open("https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
data.photo.attach(io: data_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

support = Team.create!(name: "Support", location: "Nantes", department: "Sales & Marketing",
  description: "the support team is in charge of handling the support requests of the \
  existing clients, using telephone, chat and emails as communication channels.")
support_pic = URI.open("https://www.allbusiness.com/asset/2016/09/business-group.jpg")
support.photo.attach(io: support_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

sales = Team.create!(name: "Sales", location: "Paris", department: "Sales & Marketing",
  description: "the sales team is in charge of originating new deals with prospects \
  and clients.")
sales_pic = URI.open("https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=890&q=80")
sales.photo.attach(io: sales_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

accounting = Team.create!(name: "Accounting", location: "London", department: "Finance",
  description: "The accounting team is responsonsible for the monitoring of the activity \
  and the quarterly production of the Company's financial accounts.")
accounting_pic = URI.open("https://cdn2.hubspot.net/hubfs/1955154/Blog_Images/finance%20team.jpg")
accounting.photo.attach(io: accounting_pic, filename: 'some-image.jpg', content_type: 'image/jpg')


hr = Team.create!(name: "Human resources", location: "London", department: "Human resources & communication",
  description: "The human resources team is always here to support the workers and the teams \
  within the firm. It also defines the recruitment and the retention policies.")
hr_pic = URI.open("https://images.unsplash.com/photo-1520694478166-daaaaec95b69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
hr.photo.attach(io: hr_pic, filename: 'some-image.jpg', content_type: 'image/jpg')


puts "Seeding positions..."
sales_rep = Position.create!(user: laura, team: sales, role: "member", start_date: "02/06/2016", end_date: "04/06/2018",
  job_code: "41-4012.00", job: "Sales Representatives, Wholesale and Manufacturing, Except Technical and Scientific Products")
marketer = Position.create!(user: lionel, team: marketing, role: "member", start_date: "02/06/2018",
  job_code: "13-1161.00", job: "Market Research Analysts and Marketing Specialists")
marketing_manager = Position.create!(user: david, team: marketing, role: "manager", start_date: "02/04/2015",
  job_code: "11-2021.00", job: "Marketing Managers")
data_analyst1 = Position.create!(user: laetitia, team: data, role: "member", start_date: "05/06/2017",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst2 = Position.create!(user: charles, team: data, role: "member", start_date: "05/08/2016",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst3 = Position.create!(user: julien, team: data, role: "member", start_date: "05/12/2016",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst4 = Position.create!(user: elisa, team: data, role: "member", start_date: "05/06/2019",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst5 = Position.create!(user: max, team: data, role: "member", start_date: "05/06/2018",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_manager = Position.create!(user: laura, team: data, role: "manager", start_date: "05/06/2018",
  job_code: "15-1199.06", job: "Database Architects")
support_manager = Position.create!(user: pierre, team: support, role: "manager", start_date: "05/06/2016",
  job_code: "43-1011.00", job: "First-Line Supervisors of Office and Administrative Support Workers")
supporter1 = Position.create!(user: john, team: support, role: "member", start_date: "05/03/2019",
  job_code: "43-4051.00", job: "Customer Service Representatives")
supporter2 = Position.create!(user: jenny, team: support, role: "member", start_date: "05/06/2019",
  job_code: "43-4051.00", job: "Customer Service Representatives")


puts "Seeding walks..."
sales_walk = Walk.create!(title: "Join the sales department", team: sales,
  description: "Learn the basics of sales in 1 week! The walker will spend \
  the week learning the basics of deals origination and will attend his/her first \
  client presentation. This walk should be seen as a pre-recruitment test for internal candidates.",
  duration: "2 weeks", purpose: "Recruitment")

marketing_walk = Walk.create!(title: "Become a marketer", team: marketing,
  description: "Make the experience of joining the marketing team. \
  The marketing team is hiring! If you are interested in joining us, take this walk opportunity to \
  make sure this is the job you want. This walk should be seen as a pre-recruitment test for internal candidates.",
  duration: "2 weeks", purpose: "Recruitment")

data_walk = Walk.create!(title: "Understand Data science", team: data,
  description: "Learn the basics of data in 1 week! The walker will spend\
  the week learning the the key concepts underlying data science.\
  In the current environment, it is key to have a good understanding of the technologies\
  underlying the AI. The walker will be shown the database lake and the key softwares\
  used to process the data.",
  duration: "1 week", purpose: "Discovery")

accounting_walk = Walk.create!(title: "Accounting team is recruiting", team: accounting, description: "Try the accounting team.\
  The accounting team is expanding rapidly and is looking for motivated new talents. \
  This walk should be seen as a pre-recruitment test for internal candidates.",
  duration: "2 weeks", purpose: "Recruitment")

support_walk = Walk.create!(title: "A glance into the support team", team: support, description: "One-week experience within the support team\
  This walk will enable you to better understand the day to day life of our operators.\
  How to manage clients requests and complaints in a timely manner, and keep your\
  calm in all circumstances. This walk should be seen as a discovery walk.",
  duration: "1 week", purpose: "Discovery")

hr_walk = Walk.create!(title: "Become an HR partner", team: hr, description: "Test your willingness to join the\
  HR team.\
  Come and help us provide an amazing service to our employees.\
  The HR team manages the essential: our people.\
  This walk should be seen as a pre-recruitment test for internal candidates.",
  duration: "2 weeks", purpose: "Recruitment")


puts "Seeding skills and skill_sets..."
def seed_skills(position)
  skills = SkillsSearchService.new.run(position.job_code)
  level_range = 3.0
  pace = level_range / skills.size
  i = 0
  skills.each do|skill|
    new_skill = Skill.where(name: skill).first_or_create!
    level = level_range - i * pace
    i +=1
    new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: position, level: level)
  end
end

def seed_skillable_skill_sets(skillable, position)
  skills = SkillsSearchService.new.run(position.job_code)
  level_range = 3.0
  pace = level_range / skills.size
  i = 0
  skills.each do|skill|
    new_skill = Skill.where(name: skill).first_or_create!
    level = level_range - i * pace
    i +=1
    new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: skillable, level: level)
  end
end

seed_skills(marketer)
seed_skills(marketing_manager)
seed_skills(data_analyst1)
seed_skills(data_analyst2)
seed_skills(data_analyst3)
seed_skills(data_analyst4)
seed_skills(data_analyst5)
seed_skills(data_manager)
seed_skills(support_manager)
seed_skills(supporter1)
seed_skills(supporter2)

seed_skillable_skill_sets(marketing_walk, marketer)
seed_skillable_skill_sets(sales_walk, sales_rep)
seed_skillable_skill_sets(data_walk, sales_rep)
seed_skillable_skill_sets(accounting_walk, data_analyst1)
seed_skillable_skill_sets(support_walk, supporter1)
seed_skillable_skill_sets(hr_walk, supporter1)

seed_skillable_skill_sets(laura, data_analyst1)
seed_skillable_skill_sets(laetitia, supporter1)
seed_skillable_skill_sets(john, marketer)
seed_skillable_skill_sets(jenny, data_analyst1)


puts "Seeding user_walks..."

lionel_marketing_walk = UserWalk.create!(walk: marketing_walk, user: lionel, start_date: "01/01/2018", end_date: "15/01/2018",
  status: "accepted", review: "My walk within the marketing department enabled my to validate
  that the job was really made for me. One month later I was part of this fantastic team!")
# laura_data_walk = UserWalk.create!(walk: data_walk, user: laura, start_date: "01/01/2020", status: "pending",
#   motivation: "I am part of the marketing team and I would love to discover your team")
john_data_walk = UserWalk.create!(walk: data_walk, user: john, start_date: "15/01/2020", status: "pending",
  motivation:"I am part of the support team and I would love to discover your team")
jenny_data_walk = UserWalk.create!(walk: data_walk, user: jenny, start_date: "15/01/2020", status: "rejected")
laetitia_support_walk = UserWalk.create!(walk: support_walk, user: laetitia, start_date: "01/02/2019",end_date: "08/02/2019",
  status: "accepted", review: "My walk within the support team allowed me to discover the key issues
  faced by the support operators, which have to deal everyday with clients requests and complaints.")
john_hr_walk = UserWalk.create!(walk: hr_walk, user: john, start_date: "01/06/2019", end_date: "15/06/2019",
  status: "accepted", review: "My walk within the HR department validated my motivation to join this
  amazing team. The manager offered my a position immediately after my walk.")
laura_marketing_walk = UserWalk.create!(walk: marketing_walk, user: laura, start_date: "01/06/2017", end_date: "08/06/2017",
  status: "accepted", review: "My walk within the marketing department allowed me to discover the key issues
  faced by the marketing operators.")











