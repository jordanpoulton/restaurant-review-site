# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@british_cuisine = Cuisine.new
@british_cuisine.name="British"
@british_cuisine.save

@foreign_cuisine = Cuisine.new
@foreign_cuisine.name="Foreign"
@foreign_cuisine.save
