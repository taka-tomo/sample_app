namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Rails Tutorial",
                 email: "example@railstutorial.jp",
                 password: "example",
                 password_confirmation: "example",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end