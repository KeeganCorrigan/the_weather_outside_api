class Api::V1::WeatherController < ApplicationController
  before_action :validate_location, only: [:index]

  def index
    render json: WeatherPresenter.new(params[:latitude], params[:longitude]).current_weather
  end
end
