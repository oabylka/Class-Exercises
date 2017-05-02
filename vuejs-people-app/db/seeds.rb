# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.create([{name: "Lily", bio: "life is awesome", bioVisible: false},
	{name: "Jackie", bio: "When life gives you lemons", bioVisible: false},
	{name: "Monica", bio: "Coding is life", bioVisible: false},
	{name: "Eddie", bio: "Hellow world", bioVisible: false }])