class GymsController < ApplicationController

    def index
        render json: Gym.all, status: :ok
    end

    def show
        g = Gym.find(params[:id])
        render json: g, status: :ok
    end

    def update
        g = Gym.find(params[:id])
        g.update!(gym_params)
        render json: g, status: :ok
    end

    def destroy
        g = Gym.find(params[:id])
        g.destroy
        head :no_content
    end

    private

    def gym_params
        params.permit(:name, :address)
    end

end
