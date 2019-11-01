# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mock_students = [
    {:first_name => "Jack Conrad", :last_name => "Clark", :major => "Computer Science", :expected_grad_month => "December", :expected_grad_year => 2019},
    {:first_name => "Terrance", :last_name => "Ross", :major => "Architecture", :expected_grad_month => "May", :expected_grad_year => 2020},
    {:first_name => "Malka", :last_name => "Ali", :major => "Womens Studies", :expected_grad_month => "May", :expected_grad_year => 2069},
    {:first_name => "Mikhail", :last_name => "Tal", :major => "Water", :expected_grad_month => "January", :expected_grad_year => 2018},
    {:first_name => "Jim", :last_name => "Halpert", :major => "Sports", :expected_grad_month => "February", :expected_grad_year => 2016},
    {:first_name => "Ghengis", :last_name => "Khan", :major => "Military Studies", :expected_grad_month => "March", :expected_grad_year => 2019}
]
mock_students.each do |student|
    Student.create!(student)
end

mock_users = [
    {:user_type => "ADMIN", :username => "admin", :password => "password"},
    {:user_type => "STUDENT", :username => "student", :password => "password"},
    {:user_type => "RECRUITOR", :username => "recruitor", :password => "password"},
    {:user_type => "TEAMMATE", :username => "teamMember", :password => "password"}
]
mock_users.each do |user|
    User.create!(user)
end

mock_events = [
    {:name => "Computer Science Career Fair", :event_date => "2019-11-01", :start_time => "10:00", :end_time => "18:00"},
    {:name => "Business Career Fair", :event_date => "2019-11-08", :start_time => "10:00", :end_time => "18:00"}
]

mock_events.each do |event|
    Event.create!(event)
end
