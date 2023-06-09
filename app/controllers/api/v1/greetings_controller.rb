class Api::V1::GreetingsController < ApplicationController
  def index
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: Greeting.all.sample
  end
end
