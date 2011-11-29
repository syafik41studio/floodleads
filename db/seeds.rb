# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new
user.email = "flood@leads.com"
user.password = "password"
user.account_id = "ACb58039eb97a644fa8669cd6354f78b2a"
user.auth_token = "abb3bcb7e66aae8e49fccb180008922f"
user.save