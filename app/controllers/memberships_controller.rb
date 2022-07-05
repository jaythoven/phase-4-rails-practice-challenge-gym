class MembershipsController < ApplicationController
   
    def index
        render json: Membership.all, status: :ok
    end
    
    def create
        render json: Membership.create!(membership_params), status: :created
    end

    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end

end
