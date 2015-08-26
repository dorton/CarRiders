module API
  module V1
    class Parents < Grape::API
      include API::V1::Defaults

      resource :parents do
        desc "Return all parents"
        get "", root: :parents do
          Parent.all
        end

        desc "Return a parent"
        params do
          requires :id, type: String, desc: "ID of the parent"
        end
        get ":id", root: "parent" do
          Parent.where(id: permitted_params[:id]).first!
        end

        desc "Create a Parent"
      post do

        Parent.create!({
          name: params[:parent][:name],
          email: params[:parent][:email],
          phone: params[:parent][:phone],

        })
      end

      end
    end
  end
end
