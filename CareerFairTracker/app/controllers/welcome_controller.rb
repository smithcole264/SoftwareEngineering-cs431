class WelcomeController < ApplicationController
  def index
    if (params.has_key?(:id) && params.has_key?(:random))
      @id = params['id']
      @whateverYouWant = params['random']
    elsif (params.has_key?(:id))
      @id = params['id']
    end
  end

  def sample
    @controller_message = "Hello From Controller"
  end
end
