class Api::V1::GreetingsController < ApplicationController

  def random_greetings
    greeting = Greeting.order('RANDOM()').first
    render json: { message: greeting.message }
  end
end
