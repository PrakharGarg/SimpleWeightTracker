class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    
    @array = []
    Weight.find_each do |entry|
      if entry.user_id == current_user.id
        @array.push(:created_at => entry.created_at, :weight => entry.weight)
      end
    end
    
  end
end
