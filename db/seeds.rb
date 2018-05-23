# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  ["user1@example.com", "sachin", "Surat", 123],
  ["user2@example.com", "salman", "Ahmedabad", 123],
  ["user3@example.com", "suresh", "Vadodara", 123]
]

user_list.each do |email, name, city, mobile|
users =  User.create( email: email, user_name: name, user_city: city, user_mobile: mobile )
end

# Post.create(me: "title",text: "text", user_id: User.find_by_user_id)