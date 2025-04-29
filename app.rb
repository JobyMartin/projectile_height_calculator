require 'sinatra'
require_relative 'projectile_calculator.rb'

calculator = ProjectileCalculator.new

get '/' do
  @display = "Press start when projectile is launched"
  erb :index
end

post '/startTimer' do
  calculator.start_timer
  @display = "Timer running..."
  erb :index
end

post '/stopTimer' do
  calculator.stop_timer
  @delta_t = calculator.end_time - calculator.start_time
  calculator.calculate_height(@delta_t)
  @height = calculator.height * 3.281
  erb :results
end
