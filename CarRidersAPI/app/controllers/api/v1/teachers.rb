module API
  module V1
    class Teachers < Grape::API
      include API::V1::Defaults

      resource :teachers do
        desc "Return all teachers"
        get "", root: :teachers do
          Teacher.all
        end

        desc "Return a teacher"
        params do
          requires :id, type: String, desc: "ID of the teacher"
        end
        get ":id", root: "teacher" do
          Teacher.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
