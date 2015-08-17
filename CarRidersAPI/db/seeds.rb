# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

def create_teacher
  teacher = Teacher.new
  teacher.name = Faker::Name.last_name
  teacher.grade = Faker::Number.between(1, 5)
  teacher.room = Faker::Number.between(100, 250)
  teacher.save!
  teacher
end

def create_parent
  parent = Parent.new
  parent.name = Faker::Name.name
  parent.phone = Faker::PhoneNumber.cell_phone
  parent.email = Faker::Internet.email
  parent.address = Faker::Address.street_address
  parent.zip = Faker::Address.zip
  parent.state = Faker::Address.state
  parent.city = Faker::Address.city
  parent.save!
  parent
end

def create_student(parent:, teacher:)
  student = Student.new
  student.first_name = Faker::Name.first_name
  student.last_name = Faker::Name.last_name
  student.pic = Faker::Avatar.image
  student.teacher = teacher
  student.parent = parent
  student.save!
  student
end

def create_pickup(student:, parent:)
  pickup = Pickup.new
  pickup.current_pickup = [true, false].sample
  pickup.student = student
  pickup.parent = parent
  pickup.save!
end


10.times do
  create_teacher
end

50.times do

  p = create_parent
  [1, 2, 3, 4].sample.times do
    t = Teacher.all.sample
    create_student(parent: p, teacher: t)
  end

end

100.times do
  s = Student.all.sample
  p = s.parent
  create_pickup(student: s, parent: p)
end
