class ApplicationController < ActionController::Base
  def weather_action
    render json: {message: "not the best"}
  end
end
