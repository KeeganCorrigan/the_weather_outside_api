# README

### About

This is a restful JSON API that delivers limited detail on the current weather using the [Dark sky API](https://darksky.net/dev). More importantly, the current weather is represented by a gif! So when someone asks "what's the weather like outside?", you can show them.

The front end repo is located [here](https://github.com/KeeganCorrigan/the_weather_outside).

Deployed at:

[https://whats-the-weather-like-outside.herokuapp.com/api/v1](https://whats-the-weather-like-outside.herokuapp.com/api/v1)

### Technology Used

* [Rails version: 5.2.0](https://rubyonrails.org/)
* [Ruby version: 2.4.3](https://www.ruby-lang.org/en/)
* [Rspec/Capybara](http://rspec.info/documentation/)

### How to set up the API to run locally.

1. Clone this repo
    * `$ git clone https://github.com/KeeganCorrigan/the_weather_outside_api.git`

2. Run these commands:
    * `$ cd the_weather_outside_api`
    * `$ bundle update`
    * `$ rake db:{drop,create,migrate,seed}`

    The seed file includes gifs hosted on S3! So it should work for you too!

    * `$ rails s`
    * If you want to run a local test suite `$ rspec` otherwise you can open up `localhost:3000` in your browser and try a route! VCR and Webmock are used for testing, so it will require a dark sky api key!

## End Points

A sample request:

1. `GET /api/v1/weather?latitude=39.7392&longitude=104.9903`

Returns a gif related to the current weather condition. A latitude and longitude are required. You will receive a `400` status if you do not pass in a latitude or longitude.

```json
{
    "summary": "Overcast",
    "apparent_temperature": 32.16,
    "image_url": "https://s3.us-east-2.amazonaws.com/kc-the-weather-outisde/cloudy.gif"
}
```

Here's an example gif for a `clear-night`:

![image](https://s3.us-east-2.amazonaws.com/kc-the-weather-outisde/clear-night.gif)
