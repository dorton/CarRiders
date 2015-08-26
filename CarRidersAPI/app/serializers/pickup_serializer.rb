class PickupSerializer < ActiveModel::Serializer
  attributes :id, :current_pickup, :time_submitted, :student_name, :grade, :teacher, :pic, :parent_name, :updated_at



  def student_name
    object.student.full_name
  end

  def time_submitted
    object.created_at.strftime('%b %e, %l:%M %p')
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

  def parent_name
    object.parent.name
  end

end
