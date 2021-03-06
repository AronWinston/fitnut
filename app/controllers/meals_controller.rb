class MealsController < ApplicationController
  def index
    @user = current_user
    @meals = @user.meals.order('created_at DESC')
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @user = current_user
    @meal = Meal.new
  end

  def create
    @user = current_user
    @meal = Meal.new(
      user_id: @user.id,
      image: params[:image],
      meal_type: params[:meal_type],
      meal_name: params[:meal_name],
      calories_consumed: params[:calories_consumed]
    )
    if @meal.save
      redirect_to meals_path(@meal)
    else
      render 'new'
    end
  end

  def edit
    # @user = current_user
    @meal = Meal.find(params[:id])
  end

  def update
    @user = current_user
    @meal = Meal.find(params[:id])
    @meal.update(
      user_id: @user.id,
      image: params[:meal][:image],
      meal_type: params[:meal][:meal_type],
      meal_name: params[:meal][:meal_name],
      calories_consumed: params[:meal][:calories_consumed]
    )
    redirect_to meals_path(@meal)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
        redirect_to request.referrer
  end
end
