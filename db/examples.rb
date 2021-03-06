# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(antony jeff matt jason).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)
end

%w(meal1 meal2 meal3 meal4).each do |title|
  meal_name = "#{title}"
  next if Meal.exists? title: meal_name
  Meal.create!(title: meal_name,
               eaten_on: '1988-10-07',
               description: 'some things here',
               feeling: '9')
end
