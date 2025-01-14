class CampersController < ApplicationController
  def index 
    campers = Camper.all
    render json: campers
  end 

  def show 
    camper = Camper.find(params[:id])
    if camper 
      render json: camper, serializer: CamperActivitiesSerializer
    else
      render json: {error: "Camper not found"}
    end
  end 

  def create 
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end 

  private

  def camper_params
    params.permit(:name, :age)
  end 
end
