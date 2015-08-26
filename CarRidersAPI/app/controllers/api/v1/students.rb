module API
  module V1
    class Students < Grape::API
      include API::V1::Defaults

      resource :students do
        desc "Return all students"
        get "", root: :students do
          Student.all
        end

        desc "Return a student"
        params do
          requires :id, type: String, desc: "ID of the student"
        end
        get ":id", root: "student" do
          Student.where(id: permitted_params[:id]).first!
        end

        desc "Create a Student"
      post do

        Student.create!({
          first_name: params[:student][:first_name],
          last_name: params[:student][:last_name],
          pic: params[:student][:pic],
        })
      end

      end
    end
  end
end
