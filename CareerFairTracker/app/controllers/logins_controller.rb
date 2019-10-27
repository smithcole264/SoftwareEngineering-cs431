class LoginsController < ApplicationController

  def index
    # attemptLogin(params[:login][:username], params[:login][:password])  
    @possible_login_error_message = params[:login_error_message]
      # end
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
