class StudentSerializer < ActiveModel::Serializer
  attributes :name, :pic, :grade, :teacher_name, :teacher_id, :parent

has_many :pickups


def name
  "#{object.first_name} #{object.last_name}"
end

def teacher_name
  object.teacher.name
end



def grade
  object.teacher.grade
end



end
