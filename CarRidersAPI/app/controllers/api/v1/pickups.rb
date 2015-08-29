module API
  module V1
    class Pickups < Grape::API
      include API::V1::Defaults

      resource :pickups do
        desc "Return all pickups"
        params do
          optional :current_pickup, type: Boolean
        end

        get "", root: :pickups do
        query = Pickup.all
        query = query.where(current_pickup: permitted_params[:current_pickup]) if permitted_params[:current_pickup].present?
        query
        end

        desc "Return a pickup"
        params do
          requires :id, type: String, desc: "ID of the pickup"
        end
        get ":id", root: "pickup" do
          Pickup.where(id: permitted_params[:id]).first!
        end


        desc "Create a Pickup"
        post do

          Pickup.create!({
            current_pickup: params[:student][:current_pickup],
            student_id: params[:pickup][:student]


          })
        end

        desc "Update a current_pickup status"
        # params do
        #   requires :id, type: String
        #   requires :current_pickup, type:Boolean
        # end
        put ':id' do
          Pickup.find(params[:id]).update({
          current_pickup:params[:pickup][:current_pickup]
          })
        end

      end
    end
  end
end
