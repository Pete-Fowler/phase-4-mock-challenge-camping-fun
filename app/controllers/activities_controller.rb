class ActivitiesController < ApplicationController
  def index 
    act = Activity.all
    render json: act
  end

  def destroy
    act = Activity.find(params[:id])
    act.destroy
    render json: {}, status: :accepted
  end
end
