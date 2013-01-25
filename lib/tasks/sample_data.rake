namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(first_name: "Example First Name",
     			 last_name: "Example Last Name",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      first_name  = Faker::First_name.first_name
      last_name = Faker::Last_name.last_name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(first_name: first_name,
      			   last_name: last_name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
