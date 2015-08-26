class StudentSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :pic, :parents

has_many :pickups


end
