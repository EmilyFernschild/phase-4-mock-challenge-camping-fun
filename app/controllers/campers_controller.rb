class CampersController < ApplicationController

    def index 
        render json: Camper.all, status: :ok
    end

    def show 
        render json: find_camp, status: :ok, serializer: CamperActivitySerializer
    end

    def create 
         
        render json: Camper.create!(camper_params), status: :created
    end
 

    private 

    def find_camp
        Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
