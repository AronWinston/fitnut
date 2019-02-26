class PublicWorkoutsController < ApplicationController
  def index
    @workouts=Workout.order('created_at DESC')
  end
end
