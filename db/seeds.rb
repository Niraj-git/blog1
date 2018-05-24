# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

role_list = ["admin","user"]
role_list.each do |name|
  roles =  Role.find_or_create_by(name: name)
end

user_list = [
  ["user1@example.com", "sachin", "Surat", 123],
  ["user2@example.com", "salman", "Ahmedabad", 123],
  ["user3@example.com", "suresh", "Vadodara", 123]
]

user_list.each do |email, name, city, mobile|
  users =  User.find_or_create_by(email: email) do |user|
    user.user_name = name
    user.user_city = city    
    user.user_mobile = mobile
  end  
end

user = User.find_or_create_by(email: "admin@example.com") do |user|
  user.password = "adminadmin"
  user.password_confirmation = "adminadmin"
end
user.add_role :admin

# Post.all.each do |post|  
#   post.status = "pending"
#   post.save
# end
# Post.create(me: "title",text: "text", user_id: User.find_by_user_id)