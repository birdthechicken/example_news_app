class Api::ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=#{ENV['API_KEY']}")
    render json: response.parse
  end
end
