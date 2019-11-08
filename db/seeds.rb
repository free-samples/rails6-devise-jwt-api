# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create email: 'u@email.com', password: '12345678'
# 3.times do |n|
#   Destination.create name: "Destination-#{n}", description: "Description #{n}"
# end

if User.all.size < 1

	logic_delete_status_type = StatusType.where(id: 1, name: 'logic_delete', description: 'Active records or deleted records').first_or_create
	# logic_delete_status_type = StatusType.find name: 'logic_delete'
	active_status = Status.where(id: 1, name: 'active', description: 'Active records', status_type: logic_delete_status_type).first_or_create
	Status.where(id: 2, name: 'inactive', description: 'Active records', status_type: logic_delete_status_type).first_or_create

	user = User.where(email: 'u@email.com', status: active_status).first_or_create
	user.password = '12345678'
	user.save
	user2 = User.where(email: 'o@email.com', status: active_status).first_or_create
	user2.password = '12345678'
	user2.save

	3.times do |n|
	  Destination.create name: "Destination-#{n}", description: "Description #{n}", status: active_status
	end

end