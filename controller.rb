require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/rps.rb'
also_reload './models/*'


get '/' do
  erb (:home)
end


get '/rps-game/:shape1/:shape2' do
  newgame = Rps.new(params[:shape1].to_s, params[:shape2].to_s)
  @rps_results = newgame.play.to_s
  erb (:rps_result)
end
