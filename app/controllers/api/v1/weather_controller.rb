class Api::V1::WeatherController < ApplicationController
  before_action :validate_location, only: [:index]

  def index
    # weather_service = WeatherService.new
    # current_weather = weather_service.current_weather(params[:latitude], params[:longitude])
    #
    # weather = Weather.new(current_weather)

    render json: WeatherPresenter.new(params[:latitude], params[:longitude]).current_weather
  end
end
