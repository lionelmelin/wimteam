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
pierre = User.create!(email: "pierre@giggle.com", password: "password", first_name: "Pierre", last_name: "Nevada", gender: "male", birth_date: "01/02/1990", graduation_date: "11/11/2013")
pierre_pic = URI.open("https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
pierre.photo.attach(io: pierre_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

laura = User.create!(email: "laura@giggle.com", password: "password", first_name: "Laura", last_name: "Jane", gender: "female", birth_date: "01/02/1990", graduation_date: "11/11/2014")
laura_pic = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
laura.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

lionel = User.create!(email: "lionel@giggle.com", password: "password", first_name: "Lionel", last_name: "Minton", gender: "male", birth_date: "01/02/1994", graduation_date: "11/11/2018")
lionel_pic = URI.open("https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
lionel.photo.attach(io: lionel_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

laetitia = User.create!(email: "laetitia@giggle.com", password: "password", first_name: "Laetitia", last_name: "Delta", gender: "female", birth_date: "01/02/1992", graduation_date: "11/11/2016")
laetitia_pic = URI.open("https://images.unsplash.com/photo-1504703395950-b89145a5425b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
#laetitia.photo.attach(io: laetitia_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

john = User.create!(email: "john@giggle.com", password: "password", first_name: "John", last_name: "Barrinston", gender: "male", birth_date: "01/02/1985", graduation_date: "11/11/2010")
john_pic = URI.open("https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60")
john.photo.attach(io: john_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

jenny = User.create!(email: "jenny@giggle.com", password: "password", first_name: "Jenny", last_name: "Adam", gender: "female", birth_date: "01/02/1995", graduation_date: "11/11/2018")
jenny_pic = URI.open("https://images.unsplash.com/photo-1484863137850-59afcfe05386?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60")
jenny.photo.attach(io: jenny_pic, filename: 'some-image.jpg', content_type: 'image/jpg')


puts "Seeding teams..."
marketing = Team.create!(name: "Marketing", department: "Sales & Marketing", description: "Within the Sales & Marketing department, the Marketing team is in charge of defining the Company's marketing strategy, and of designing the marketing supports used by the sales teams.")
marketing_pic = URI.open("https://images.unsplash.com/photo-1557804506-669a67965ba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
marketing.photo.attach(io: marketing_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

data = Team.create!(name: "Data", department: "IT", description: "With the IT department, the Data team is in charge of gathering, cleaning, modelling and analysing all the data produced by the Company's activities.")
data_pic = URI.open("https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
data.photo.attach(io: data_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

support = Team.create!(name: "Support", department: "Sales & Marketing", description: "the support team is in charge of handling the support requests of the existing clients, using telephone, chat and emails as communication channels.")
support_pic = URI.open("https://www.cyfe.com/blog/wp-content/uploads/2017/11/5-Customer-Support-Metrics-Every-Customer-Service-Department-Should-Be-Measuring.png")
support.photo.attach(io: support_pic, filename: 'some-image.jpg', content_type: 'image/jpg')


puts "Seeding positions..."
marketer = Position.create!(user: laura, team: marketing, role: "member", start_date: "02/03/2018", job_code: "11-2021.00", job: "Marketing Managers")
data_analyst = Position.create!(user: laetitia, team: data, role: "member", start_date: "05/06/2017", job_code: "15-1199.08", job: "Business Intelligence Analysts")
data_manager = Position.create!(user: lionel, team: data, role: "manager", start_date: "05/06/2015", job_code: "15-1199.06", job: "Database Architects")
support_manager = Position.create!(user: pierre, team: support, role: "manager", start_date: "05/06/2016", job_code: "43-1011.00", job: "First-Line Supervisors of Office and Administrative Support Workers")
supporter_1 = Position.create!(user: john, team: support, role: "member", start_date: "05/06/2017", job_code: "43-4051.00", job: "Customer Service Representatives")
supporter_2 = Position.create!(user: jenny, team: support, role: "member", start_date: "05/06/2019", job_code: "43-4051.00", job: "Customer Service Representatives")


puts "Seeding skills and position skill_sets..."
marketer_skills = SkillsSearchService.new.run(marketer.job_code)
marketer_skills.each do|skill|
  new_skill = Skill.create!(name: skill)
  new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: marketer)
end

data_analyst_skills = SkillsSearchService.new.run(data_analyst.job_code)
data_analyst_skills.each do |skill|
  new_skill = Skill.where(name: skill).first_or_create!
  new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: data_analyst)
end

data_manager_skills = SkillsSearchService.new.run(data_manager.job_code)
data_manager_skills.each do |skill|
  new_skill = Skill.where(name: skill).first_or_create!
  new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: data_analyst)
end

support_manager_skills = SkillsSearchService.new.run(marketer.job_code)
support_manager_skills.each do |skill|
  new_skill = Skill.where(name: skill).first_or_create!
  new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: support_manager)
end

supporter_1_skills = SkillsSearchService.new.run(marketer.job_code)
supporter_1_skills.each do |skill|
  new_skill = Skill.where(name: skill).first_or_create!
  new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: supporter_1)
end

supporter_2_skills = SkillsSearchService.new.run(marketer.job_code)
supporter_2_skills.each do |skill|
  new_skill = Skill.where(name: skill).first_or_create!
  new_skill_set = SkillSet.create!(skill: new_skill, active: true, skillable: supporter_2)
end

puts "Seeding walks..."
data_walk = Walk.create!(team: data, description: "One-week experience within the data science team", duration: "one week")
support_walk = Walk.create!(team: support, description: "One-week experience within the support team", duration: "one week")

puts "Seeding user_walks..."
laura_data_walk = UserWalk.create!(walk: data_walk, user: laura, start_date: "01/01/2020", status: "pending")
john_data_walk = UserWalk.create!(walk: data_walk, user: john, start_date: "15/01/2020", status: "rejected")
laetitia_support_walk = UserWalk.create!(walk: support_walk, user: laetitia, start_date: "01/02/2020", status: "accepted")


