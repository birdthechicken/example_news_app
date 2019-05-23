class Api::ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=#{ENV['API_KEY']}")
   

    data = response.parse
    title = data["articles"][0]["title"]
    description = data["articles"][0]["description"]

    render json: {title: title, description: description}
  end
end
