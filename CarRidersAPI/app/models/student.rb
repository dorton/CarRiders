class Student < ActiveRecord::Base
  has_many :pickups
  has_many :parents, :through => :pickups
  belongs_to :teacher

  def full_name
    "#{first_name} #{last_name}"
  end
end
