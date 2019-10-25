class LoginController < ApplicationController
  def index
    flash[:notice] = "student was attempted to be added"
  end
end
