# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


['Jack', 'Kevin', 'John'].each do |name|
	User.create(name: name)
end

['Project Management', 'Repository', 'Documentation'].each do |name|
	Category.create(name: name)
end


JSON.parse(File.read("#{Rails.root}/db/seeds/projects.json"))['projects'].each do |project|	
	Project.create(title: project['title'], category_id: project['category_id'], user_id: project['user_id'])
end