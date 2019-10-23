class WelcomeController < ApplicationController
  def index
  end

  def sample
    @controller_message = "Hello From Controller"
  end
end
