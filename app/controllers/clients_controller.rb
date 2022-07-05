class ClientsController < ApplicationController

    def index
        render json: Client.all, status: :ok
    end

    def show
        c = Client.find(params[:id])
        render json: c, serializer: TotalMembershipsSerializer, status: :ok
    end

    def update
        c = Client.find(params[:id])
        c.update!(client_params)
        render json: c, status: :ok
    end

    private

    def client_params
        params.permit(:name, :age)
    end

end
