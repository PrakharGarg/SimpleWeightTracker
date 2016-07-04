class WeightsController < ApplicationController
  def index
    @weight = Weight.all
  end

  def new
    @weight = Weight.new
  end
  
  def create
    @weight = Weight.new(weight: params[:new_weight], user_id: params[:user_id])
    
    if @weight.save
         redirect_to root_path, alert: "Successfully updated weight."
    else
        redirect_to root_path, alert: "Error updating weight. Please try again."
    end
  end
end
