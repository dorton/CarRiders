class StudentSerializer < ActiveModel::Serializer
  attributes :name, :pic, :grade, :teacher_name, :phone_number, :parent_name, :teacher_id, :parent_id

def name
  "#{object.first_name} #{object.last_name}"
end

def teacher_name
  object.teacher.name
end

def phone_number
  object.parent.phone
end

def grade
  object.teacher.grade
end

def parent_name
  object.parent.name
end

end
