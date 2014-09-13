# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

uni = University.create(name: 'University of Toronto', abbreviation: 'UofT')

User.create(username: 'jwebbed', university: uni)
courses = Course.create([{coursecode: 'STA247', name: "Probability with Computer Applications"},
	{coursecode: 'CSC108', name: "Introduction to Computer Programming"},
	{coursecode: 'MAT137', name: "Calculus!"}])

uni.courses << courses.first
