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
User.destroy_all
Position.destroy_all
Team.destroy_all
Walk.destroy_all
UserWalk.destroy_all
Skill.destroy_all
SkillSet.destroy_all


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
laetitia.photo.attach(io: laetitia_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

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
data_pic = URI.open("hhttps://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
data.photo.attach(io: data_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

support = Team.create!(name: "Support", department: "Sales & Marketing", description: "the support team is in charge of handling the support requests of the existing clients, using telephone, chat and emails as communication channels.")
support_pic = URI.open("https://www.cyfe.com/blog/wp-content/uploads/2017/11/5-Customer-Support-Metrics-Every-Customer-Service-Department-Should-Be-Measuring.png")
support.photo.attach(io: support_pic, filename: 'some-image.jpg', content_type: 'image/jpg')


puts "Seeding positions..."
marketer = Position.create!(user: laura, team: marketing, role: "member", start_date: "02/03/2018", job: "Market Research Analysts & Marketing Specialists")
data_analyst = Position.create!(user: laetitia, team: data, role: "member", start_date: "05/06/2017", job: "Business Intelligence Analysts")
data_manager = Position.create!(user: lionel, team: data, role: "manager", start_date: "05/06/2015", job: "Marketing Managers")
support_manager = Position.create!(user: pierre, team: support, role: "manager", start_date: "05/06/2016", job: "First-Line Supervisors of Office & Administrative Support Workers")
supporter_1 = Position.create!(user: john, team: support, role: "member", start_date: "05/06/2017", job: "Customer Service Representatives")
supporter_2 = Position.create!(user: Jenny, team: support, role: "member", start_date: "05/06/2019", job: "Customer Service Representatives")


puts "Seeding skills"
url = 'https://api.github.com/users/ssaunier'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

puts "#{user['name']} - #{user['bio']}"






