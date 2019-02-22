class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users= User.all
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
