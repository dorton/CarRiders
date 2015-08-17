class Parent < ActiveRecord::Base
  has_many :students
  has_many :parents
end
