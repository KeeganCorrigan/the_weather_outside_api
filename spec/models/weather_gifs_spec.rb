require "rails_helper"

RSpec.describe WeatherGif, type: :model do
  context "validations" do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:condition) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:temperature_range) }
  end
end
