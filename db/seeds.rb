# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author = Author.create!(name: "Jay")
Article.create!(title: "First post!", author: author).tap do |article|
  article.comments.create!(body: "Nice one!")
  article.comments.create!(body: "Good read")
end
Article.create!(title: "How to even", author: author).tap do |article|
  article.comments.create!(body: "Not interesting")
  article.comments.create!(body: "I literally can't")
end
