class PublicMealsController < ApplicationController
  def index
    
    @meals = Meal.order('created_at DESC').includes(:user)
    
  end
end
