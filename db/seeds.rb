# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: "Pierwszy post", content: "To jest randomowy post nr 1")
Post.create(title: "Drugi post", content: "To jest randomowy post nr 2")
Comment.create(post: 1, username: "Marta", content: "To super")