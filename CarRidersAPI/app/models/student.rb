class Student < ActiveRecord::Base
  has_many :pickups
  belongs_to :parent
  belongs_to :teacher
end
