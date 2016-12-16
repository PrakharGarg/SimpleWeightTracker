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
      binding.pry
      latest_weight_array = Weight.where("user_id = #{current_user.id}")
      latest_weight = latest_weight_array.order("created_at")[-2]
      if latest_weight.created_at >= Time.zone.now.beginning_of_day
        latest_weight.destroy
      end
      redirect_to root_path, alert: "Successfully updated weight."
    else
        redirect_to root_path, alert: "Error updating weight. Please try again."
    end
  end
end
