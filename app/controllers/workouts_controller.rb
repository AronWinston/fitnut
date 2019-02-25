class WorkoutsController < ApplicationController
  def index
    @user = current_user
    @workouts = @user.workouts.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @user = current_user
    @workout = Workout.new
  end

  def create
    @user = current_user
    @workout = Workout.new(
      user_id: @user.id,
      image: params[:image],
      exercise: params[:exercise],
      muscle: params[:muscle],
      calories_burned: params[:calories_burned],
      sets: params[:sets],
      reps: params[:reps],
      weight_amount: params[:weight_amount],
      workout_date: params[:workout_date]
    )
    if @workout.save
      redirect_to workout_path(@workout)
    else
      render 'new'
    end
  end

  def edit
    # @user = current_user
    @workout = Workout.find(params[:id])
  end

  def update
    @user = current_user
    @workout = Workout.find(params[:id])
    @workout.update(
      user_id: @user.id,
      # image: params[:active_storage_attachments][:image],
      exercise: params[:workout][:exercise],
      muscle: params[:workout][:muscle],
      calories_burned: params[:workout][:calories_burned],
      sets: params[:workout][:sets],
      reps: params[:workout][:reps],
      weight_amount: params[:workout][:weight_amount],
      workout_date: params[:workout][:workout_date]
    )
    redirect_to workout_path(@workout)
  end

  def destroy
  end


end
