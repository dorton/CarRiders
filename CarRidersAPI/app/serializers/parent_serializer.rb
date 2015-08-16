class ParentSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :address, :city, :state, :zip
  has_many :students
end
