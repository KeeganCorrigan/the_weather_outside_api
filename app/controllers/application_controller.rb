class ApplicationController < ActionController::API
  def validate_location
    render status: 400 unless params[:latitude] && params[:longitude]
  end
end
