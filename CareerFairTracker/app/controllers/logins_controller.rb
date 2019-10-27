class LoginsController < ApplicationController
  def index
    if params[:loginFailed]
      @possible_login_error_message = "Login Failed"
    end
  end

  def show
  end

  def new 
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
