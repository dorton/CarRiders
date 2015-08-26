class Parent < ActiveRecord::Base
  has_many :pickups
  has_many :students, :through => :pickups

end
