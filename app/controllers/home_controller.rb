class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user= current_user
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
