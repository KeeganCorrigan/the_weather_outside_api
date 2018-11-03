require "rails_helper"

RSpec.describe Weather, type: :model do
  it "has attributes" do
    weathergif = create(:weather_gif)
    summary = "Overcast"
    icon = "rain"
    apparentTemperature = 60.8

    params = {
                summary: summary,
                icon: icon,
                apparentTemperature: apparentTemperature,
              }

    weather = Weather.new(params)

    expect(weather).to be_a(Weather)
    expect(weather.summary).to eq(summary)
    expect(weather.apparentTemperature).to eq(apparentTemperature)
    expect(weather.image_url).to eq("https://s3.us-east-2.amazonaws.com/kc-the-weather-outisde/rain.gif")
  end
end
