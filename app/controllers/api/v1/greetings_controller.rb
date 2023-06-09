class Api::V1::GreetingsController < ApplicationController
  def index
    num = rand(1..Greeting.count)
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: Greeting.find(num)
  end
end
