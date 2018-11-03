class Api::V1::WeatherController < ApplicationController
  before_action :validate_location, only: [:index]

  def index

  end
end
