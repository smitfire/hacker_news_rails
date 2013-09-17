# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Comment.delete_all
Post.delete_all


nick = User.create(email: "n@n.com", password: "nicksmit")
javier = User.create(email: "j@j.com", password: "javier")
lyel = User.create(email: "l@l.com", password: "lyel")

20.times do
  post = Post.create(title:Faker::Lorem.sentence, url:Faker::Internet.url)
  10.times do
    post.comments << Comment.create(text:Faker::Lorem.sentence, author_id: lyel.id)
  end 
  javier.posts << post
end

20.times do
  post = Post.create(title:Faker::Lorem.sentence, url:Faker::Internet.url)
  15.times do
    post.comments << Comment.create(text:Faker::Lorem.sentence, author_id: lyel.id)
  end 
  nick.posts << post
end
