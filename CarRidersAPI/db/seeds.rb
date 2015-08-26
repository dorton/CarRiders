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
  parent.save!
  parent
end

def create_student(teacher)
  student = Student.new
  student.first_name = Faker::Name.first_name
  student.last_name = Faker::Name.last_name
  student.pic = Faker::Avatar.image
  student.teacher = teacher
  student.save!
  student
end

# def create_pickup(student:, parent:)
#   pickup = Pickup.new
#   pickup.current_pickup = [true, false].sample
#   pickup.student = student
#   pickup.parent = parent
#   pickup.save!
#   pickup
# end


10.times do
  create_teacher
end

50.times do
  dad  = create_parent
  mom  = create_parent
  [1, 2, 3, 4].sample.times do
    little_bobby = create_student(Teacher.all.sample)
    little_bobby.parents << dad
    little_bobby.parents << mom
  end

end

# 100.times do
#   s = Student.all.sample
#   p = s.parent
#   create_pickup(student: s, parent: p)
# end
