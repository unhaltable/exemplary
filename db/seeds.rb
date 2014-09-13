# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

uni = University.create(name: 'University of Toronto', abbreviation: 'UofT')

me = User.create(username: 'jwebbed', university: uni)
courses = Course.create([{coursecode: 'STA247', name: "Probability with Computer Applications"},
	{coursecode: 'CSC108', name: "Introduction to Computer Programming"},
	{coursecode: 'MAT137', name: "Calculus!"}])

#this is dumb but welp
uni.courses << courses.first
uni.courses << courses.second
uni.courses << courses.third

ezstats = Document.create(name: "That shitty exam from 2012 lol")
courses.first.documents << ezstats
me.documents << ezstats

comment = Comment.create(content: "this is the definition of a shitty comment T_T")
