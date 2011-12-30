# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#user = User.new
#user.email = "flood@leads.com"
#user.password = "password"
#user.account_id = "ACb58039eb97a644fa8669cd6354f78b2a"
#user.auth_token = "abb3bcb7e66aae8e49fccb180008922f"
#user.save!



user = User.new
user.email = "syafik@leads.com"
user.password = "password"
user.account_id = "AC31ad5fa8baab4c2aa8d1940b253aa9d7"
user.auth_token = "671f91cfe3fb172b112836bfe85aa857"
user.first_name = "Syafikli"
user.postal_code = "614"
user.company_name = "syafikflood"
user.country = "US"
user.expiration_date = Time.now + 3.months
user.card_id = "12345"
user.card_number = "12345"
user.cvv = "12345"
user.save!