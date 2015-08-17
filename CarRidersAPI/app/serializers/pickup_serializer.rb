class PickupSerializer < ActiveModel::Serializer
  attributes :current_pickup, :time_submitted, :student_name, :grade, :teacher, :parent_name, :pic


  def student_name
    "#{object.student.first_name} #{object.student.last_name}"
  end

  def time_submitted
    object.created_at.strftime('%b %e, %l:%M %p')
  end

  def parent_name
    object.student.parent.name
  end

  def grade
    object.student.teacher.grade
  end

  def teacher
    object.student.teacher.name
  end

  def pic
    object.student.pic
  end

end
