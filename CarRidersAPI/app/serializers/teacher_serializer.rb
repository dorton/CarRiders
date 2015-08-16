class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade, :room
  has_many :students

end
