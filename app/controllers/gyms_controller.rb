class GymsController < ApplicationController

    def index
        gyms = Gym.all 
        render json: gyms 
    end

    def show
        gym = find_gym
        render json: gym, status: :ok 
    end

    def destroy
        gym = find_gym
        gym.destroy 
        head :no_content

    end

    def update
        gym = find_gym 
        client.update(find_params)
        render json: gym 
    end

    private 

    def find_gym
        Gym.find(params[:id])
    end

    def gym_params
        params.permit(:name, :address)
    end

end
