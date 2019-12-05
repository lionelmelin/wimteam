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
  last_name: "Nicoletti", gender: "male", birth_date: "01/02/1990", graduation_date: "30/06/2013")
pierre_pic = URI.open("https://lh3.googleusercontent.com/1isXGKAlIeZULddq6oJN3xlvCZOtJrTjhFJpf10pIOIaGq37DlqiDgB_W7oaoXISzykRz-Ls_NsN2-Iou3OXBE6l1ENB5OWcB9-A5OPQaHvQ95lJg4U4Tt9rDy3qL906MgcU2tIeP4AAEbFH3xpqjb9BgiZV-9sYPaUTW2czh_6x1PP7w1OTPNBBwPT2_znqnT2SqSYGBi2w9VYAIA8_kq3AC4VcDTfIL0Rui1JH9BB-J_TT_53e2yrFNgWu0Ro4HC_ODHSLspya4UDp9oW0O0Jr0DrW_1sOFvopmtH4vX_WlStMZrzD7JPuaT5ljmXmccxfQ0yLCySGSm8IUhixEwNlFFXoPHuphH888-vdVsP1nm2GNo1WGeDAYOc6oz5o5MeDT5V4h39E6kwahUF6m33xB02nnoRd4a2_4_QMN87kWbS08zTcB5a03BFjV_tEn-AXr5T3b-h7ecSL5Bm34YV8-vmi6s5wZtKkMH47b_GS3KBu9XKGWC5iisF5z5D1cj9Ps00Smb9X_ejIrbcYpzjsd3_7Den8w4KL_doCiIpxK87EmAw0v5ozFuj1UXbpoE55g9_xSaXL0mql7N2EC6NJVNQOYfdc-JrW4oxAA5uQq-wEqCqFLXhPWxsUMX-alpTKXVlUbFXxoAH3cCOy5iYt_U4DTixahgWyV1J75aOMCM_y2xZurceG6g6zN8bNDXM0ma_ZfLgGcjC02itN0-9Wq8YZQhETIVls4Pb9aE4=w962-h640-no")
pierre.photo.attach(io: pierre_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

laura = User.create!(purpose: "Discovery", email: "laura@giggle.com", password: "password", first_name: "Laura",
  last_name: "Carrere", gender: "female", birth_date: "30/07/1985", graduation_date: "30/06/2010",
  description: "I have a master in Computer Science from the MIT. I graduated in 2010 and \
started in Facebook's data science department. I joined Giggle's Data team in \
2018 as head of the team.")
laura_pic = URI.open("https://lh3.googleusercontent.com/7IlSPaHM1Cwr-8PM42ylJUAr0IUNlcHM-cCebDGqSIsiMFcBt8ceut_dnD7KbaUcOLzdOiCzUWkuN8SsOjV87ikl_Iq86b0sfVPMpJBhUPBvU4c5vm3WYfySqRXJE227mlL3uetQVpVO-fdHmxnctVn7aIz2XQTXTOMNE4D0x_895kCTsp5lUEbaZTJ_Yqa-6I6J9FmPI9w8u0wt9E7Z8G8MZl3_XYW0KijhPaUcjNMNtWRFoZJovVTjer_taQHf4s-YF-SqIWJAfKAUPimVuyaCLB2OZ4X8r2awbXr7ycPhIlPWb0421ENy1AoCp5Gi4VKEFxyUz96wlexES_rPG3nC3G49rtK4N4MYeYgiy5r9UK-J-yG_TiC8Tm8K1fZufh8-IwL1AXX0JMZZuCYSGILHC7U7VXvOiubNdTO-I6ccr90lgWKwgJd5FVJVsp2coi26qi08i6XUjynVm1o5USRbYXYhHIiLqIrUW9t4in6tPZrmDMzAh1J5FTRXE_e-nN1JZOaV7oJ6EayxeNzLv-FLsGk5mWCFeJ7EbyDa5ouV7_NloTJOpqzlv4TqXTciNvv6U2yTIJnTpU1siXA4xJ_EJG-hwyyWdfSDLvtRPf1L97k6T03SxSWR3PnsqyyZ2MpryQHx34yFrp5iBxyhPN-kmJjTJkMXQWsuhL8bbzKafh8I6X9UQpbjhGmozzoMZ15sbZ7IdliPtdTY5IrVbwgKn8WWMXEZfydX8_MAhq4=w962-h640-no")
laura.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

david = User.create!(purpose: "Recruitment", email: "david@giggle.com", password: "password", first_name: "David",
  last_name: "Elliot", gender: "male", birth_date: "23/03/1976", graduation_date: "30/06/2000")
david_pic = URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
david.photo.attach(io: david_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

lionel = User.create!(purpose: "Recruitment", email: "lionel@giggle.com", password: "password", first_name: "Lionel",
  last_name: "Melin", gender: "male", birth_date: "01/02/1990", graduation_date: "30/06/2013",
  description: "I have a master in Business Administration from Stanford. I graduated in 2013 and \
started in Amazon's Sales & Marketing department. I joined Giggle's Sales team in \
2016 and I moved to the Marketing team in 2019.")
lionel_pic = URI.open("https://lh3.googleusercontent.com/mKyFk21H4vqbjG-MOZ-hrJ43DbRe6c0oFfdkSG3nFbnsi-ocQYJr6kNq3AjHyg7Gb4vnSZXhFL5ZV3cwLsii0-WPgTsnBTEHCVATZYpT4mWNNzgUn0X9-qRowvEbqjCiv8m98-_DzpPewgKyy8mcLrtWmxS2GW1mp72rMbIJO6genH63sLx44MnElCgbK2La4vAeDh62Oqv5-v254rqM5TuMEOlMHplD1c2lbx03FL56xRritOUU57sqYBs6yZ2QXZqQ7nFbKcw17QqAdFVRvVbATPR7JfxhokrRicY___5p6r-Zl1L40XwCImu71nVBFkyUUSDv_EVLM9E5OXk0tEUZvhhTZhoLeAw-teGZEsMR6W-Zbzzhy9xsd4EoHY5-vLeHEnRvB7iKGLshcg-aM7rchXqQWxzJrF8vueeiDg7EqpMc1l9TCvJv9zf5hqV5Z1NGCQTCWIAIgnXMYomkrk7vtTdfTqMAa9JthT-Zm8glAZkjrUxZ6NeVQJdOVKehc9v-P1dAWH19Q9JbY5cEdxl9p_4Ma6GA0OslXs_x0HKIEsn_zr6MNRuN3g9yQfRtJ0e-K9K0O5f4e2_4xYmb1v3u1KXlM9EfsicY5OitbLJ_AFI4VeaNaKCreNtk8LzkAjy2Lfwf_-Yw83pX28alDdsrKVDUoSkj6_vr_AkgmZR3RQn_EsfNNi3Zw2-0fub-4ouOKAou8--dSGxSlv_enP4K_Vd99Uhrt7E0hosmgmk=w962-h640-no")
lionel.photo.attach(io: lionel_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

laetitia = User.create!(purpose: "Discovery", email: "laetitia@giggle.com", password: "password", first_name: "Laetitia",
  last_name: "Danton", gender: "female", birth_date: "12/07/1992", graduation_date: "30/06/2016",
  description: "I have a master in Computer Science from the MIT. I graduated in 2016 and \
started with an internship in Facebook's data science department. I joined Giggle's Data team in \
2017 as a Business intelligence Analyst.")
laetitia_pic = URI.open("https://lh3.googleusercontent.com/BFuVd_8UYCRU5YFk8ZNQxQglRb2iZ3gP5awZFvSdbb6XuANMQytmP6S72-UyPMPzxpel9exC7AIHNhWT31XdCUsAEmwGa3DtG1CD7RinoYsaYh4HzbHsH1UQ_KF1YdhzOd94X10ZGbCt89vyvtrDBFpf-vXOgMkM7feV5ZPFzwriYXILhqwC80Ruij6wcadOheVG_DvjlEWcoXy9iAOnZgtiyYZ8bSnZurxGpqz8EwQKAq7bfgJQhXaf_-EUuEBBaenQ2yEQ5ECIMxgILP2DSqbUnuRDFsEe-uWN9FrzCfKjANt59pa3lR7WCmCDTu3_I_-nae-CILnsjmFbu7rpBqalULsrunmpU0h6rqZIkWmLYv1A0A91c1som4PCwiK9S5B9d1iiWM2Mabu5n5ft4Py-2YYgYY8z2hZ9nd3aNUYjNH42njriTn65XZXjVPm-QevpjntAUmZn8paLIihd97suf9OvQg3dpprkBsGgK_EpdDG_oZZwJlFEIm2rIoYvZhM_YK4JwQLYkofu9LA2_bxL24sHZzvnPw2ZEhvgdrWdvpg7xNilUz1QFJ-zu1tjGXzKT3bv3y4uW2-9NgTr3Bn6wOFsW9QH1XO5DRvcGRCbaXuHcK2WRLlnqN7cyHTKfJ-HYKgYxwibQmr42mCuZqfIWIFdag3HovKo3X-8YJIW-JIVN9FeC2ALrpKWZ08No6GrBv1cT4nGrl4UUROv44-NNMT1zowh7xi3yyXM_O4=w962-h640-no")
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
  last_name: "Day", gender: "male", birth_date: "07/03/1985", graduation_date: "30/06/2010",
  description: "I have a master in Computer Science from the MIT. I graduated in 2010 and \
started in Facebook's data science department. I joined Giggle's Data team in \
2016 as a Business intelligence Analyst.")
charles_pic = URI.open("https://images.unsplash.com/flagged/photo-1561530822-923d268fa0a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
charles.photo.attach(io: charles_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

julien = User.create!(purpose: "Discovery", email: "julien@giggle.com", password: "password", first_name: "Julien",
  last_name: "Menisson", gender: "male", birth_date: "02/11/1992", graduation_date: "30/06/2016",
  description: "I have a master in Computer Science from the MIT. I graduated in 2016 and \
started in Facebook's data science department. I joined Giggle's Data team in \
2016 as a Business intelligence Analyst.")
julien_pic = URI.open("https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80")
julien.photo.attach(io: julien_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

elisa = User.create!(purpose: "Recruitment", email: "elisa@giggle.com", password: "password", first_name: "Elisa",
  last_name: "Laster", gender: "female", birth_date: "07/04/1995", graduation_date: "30/05/2018",
  description: "I have a master in Computer Science from the MIT. I graduated in 2018 and \
started with an internship in Facebook's data science department. I joined Giggle's Data team in \
june 2019 as a Business intelligence Analyst.")
elisa_pic = URI.open("https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
elisa.photo.attach(io: elisa_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

max = User.create!(purpose: "Discovery", email: "max@giggle.com", password: "password", first_name: "Max",
  last_name: "Dilligham", gender: "male", birth_date: "07/05/1994", graduation_date: "30/06/2017",
  description: "I have a master in Computer Science from the MIT. I graduated in 2017 and \
started with an internship in Facebook's data science department. I joined Giggle's Data team in \
2018 as a Business intelligence Analyst.")
max_pic = URI.open("https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
max.photo.attach(io: max_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

puts "Seeding teams..."
marketing = Team.create!(name: "Marketing", location: "Paris", department: "Sales & Marketing",
  description: "Within the Sales & Marketing department, the Marketing team is \
  in charge of defining the Company's marketing strategy, and of running analyses \
  on the company's operating datas.")
marketing_pic = URI.open("https://images.unsplash.com/photo-1557804506-669a67965ba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
marketing.photo.attach(io: marketing_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

data = Team.create!(name: "Data", location: "Paris", department: "IT",
  description: "Within the IT department, the Data team is in charge of gathering, \
  cleaning, analysing and modelling all the data produced by the Company's activities.")
data_pic = URI.open("https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
data.photo.attach(io: data_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

support = Team.create!(name: "Support", location: "Nantes", department: "Sales & Marketing",
  description: "the support team is in charge of handling the support requests of the \
  existing clients, using telephone, chat and emails as communication channels.")
support_pic = URI.open("https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fcdn.welcometothejungle.co%2Fuploads%2Fwebsite_organization%2Fcover_image%2Fwttj_fr%2Fen-gitguardian.jpg")
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
hr_pic = URI.open("https://image.freepik.com/free-photo/group-business-executives-smiling-camera_1170-1894.jpg")
hr.photo.attach(io: hr_pic, filename: 'some-image.jpg', content_type: 'image/jpg')


puts "Seeding positions..."
sales_rep = Position.create!(user: laura, team: sales, role: "member", start_date: "02/06/2016", end_date: "04/06/2018",
  job_code: "41-4012.00", job: "Sales Representatives, Wholesale and Manufacturing, Except Technical and Scientific Products")
marketer = Position.create!(user: lionel, team: marketing, role: "member", start_date: "02/02/2019",
  job_code: "13-1161.00", job: "Market Research Analysts and Marketing Specialists")
marketing_manager = Position.create!(user: david, team: marketing, role: "manager", start_date: "02/04/2015",
  job_code: "11-2021.00", job: "Marketing Managers")
data_analyst1 = Position.create!(user: laetitia, team: data, role: "member", start_date: "05/06/2017",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst2 = Position.create!(user: charles, team: data, role: "member", start_date: "05/08/2016",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst3 = Position.create!(user: julien, team: data, role: "member", start_date: "05/12/2017",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst4 = Position.create!(user: elisa, team: data, role: "member", start_date: "05/06/2019",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_analyst5 = Position.create!(user: max, team: data, role: "member", start_date: "05/06/2018",
  job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_manager = Position.create!(user: laura, team: data, role: "manager", start_date: "05/06/2018",
  job_code: "15-1199.06", job: "Database Architects")
accountant = Position.create!(user: julien, team: hr, role: "member", start_date: "05/09/2016", end_date: "04/12/2017",
  job_code: "13-2011.01", job: "Accountants")
support_manager = Position.create!(user: pierre, team: support, role: "manager", start_date: "05/06/2016",
  job_code: "43-1011.00", job: "First-Line Supervisors of Office and Administrative Support Workers")
supporter1 = Position.create!(user: john, team: support, role: "member", start_date: "05/03/2019",
  job_code: "43-4051.00", job: "Customer Service Representatives")
supporter2 = Position.create!(user: jenny, team: support, role: "member", start_date: "05/06/2019",
  job_code: "43-4051.00", job: "Customer Service Representatives")
hrbp = Position.create!(user: elisa, team: hr, role: "member", start_date: "05/06/2018", end_date: "04/06/2019",
  job_code: "13-1071.00", job: "Human Resources Specialists")


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

data_walk = Walk.create!(title: "Discover Data science", team: data,
  description: "Learn the basics of Data in one week! The walker will spend\
  the week learning the key concepts underlying Data science.\
  In the current environment, it is key to have a good understanding of the technologies\
  used in AI. The walker will be shown the datalake and the key software\
  used to process data.",
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

def seed_skillable_skill_sets_by_hand(skillable, skill_names)
  level_range = 3
  pace = level_range / skill_names.size
  i = 0
  skill_names.each do|skill_name|
    skill = Skill.find_by(name: skill_name)
    level = level_range - i * pace
    i +=1
    new_skill_set = SkillSet.create!(skill: skill, active: true, skillable: skillable, level: level)
  end
end


seed_skills(sales_rep)
seed_skills(marketer)
seed_skills(marketing_manager)
seed_skills(data_analyst1)
seed_skills(data_analyst2)
seed_skills(data_analyst3)
seed_skills(data_analyst4)
seed_skills(data_analyst5)
seed_skills(data_manager)
seed_skills(accountant)
seed_skills(support_manager)
seed_skills(supporter1)
seed_skills(supporter2)
seed_skills(hrbp)

seed_skillable_skill_sets(marketing_walk, marketer)
seed_skillable_skill_sets(sales_walk, sales_rep)
seed_skillable_skill_sets(data_walk, sales_rep)
seed_skillable_skill_sets(accounting_walk, accountant)
seed_skillable_skill_sets(support_walk, supporter1)
seed_skillable_skill_sets(hr_walk, hrbp)

seed_skillable_skill_sets(laura, data_analyst1)
seed_skillable_skill_sets(pierre, supporter1)
seed_skillable_skill_sets(laetitia, supporter1)
seed_skillable_skill_sets(john, marketer)
seed_skillable_skill_sets(jenny, data_analyst1)

# seed_skillable_skill_sets_by_hand(lionel,["management", "design", "accounting and economics"])

puts "Seeding user_walks..."

lionel_marketing_walk = UserWalk.create!(walk: marketing_walk, user: lionel, start_date: "01/01/2019", end_date: "15/01/2019",
  status: "past")
# laura_data_walk = UserWalk.create!(walk: data_walk, user: laura, start_date: "01/01/2020", status: "pending",
#   motivation: "I am part of the marketing team and I would love to discover your team")
john_data_walk = UserWalk.create!(walk: data_walk, user: john, start_date: "15/01/2020", status: "pending",
  motivation:"I am part of the support team and I would love to discover your team")
jenny_data_walk = UserWalk.create!(walk: data_walk, user: jenny, start_date: "15/01/2020", status: "rejected")
laetitia_support_walk = UserWalk.create!(walk: support_walk, user: laetitia, start_date: "01/02/2019",end_date: "08/02/2019",
  status: "past", review: "My walk within the support team allowed me to discover the key issues\
  faced by the support operators, which have to deal everyday with clients requests and complaints.")
john_hr_walk = UserWalk.create!(walk: hr_walk, user: john, start_date: "01/06/2019", end_date: "15/06/2019",
  status: "past", review: "My walk within the HR department validated my motivation to join this\
  amazing team. The manager offered my a position immediately after my walk.")
laura_marketing_walk = UserWalk.create!(walk: marketing_walk, user: laura, start_date: "01/06/2017", end_date: "08/06/2017",
  status: "past", review: "My walk within the marketing department allowed me to discover the key issues\
  faced by the marketing operators.")











