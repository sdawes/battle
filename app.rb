require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name]).name
    $player_2_name  = Player.new(params[:player_2_name]).name
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    @player_2_hitpoints = 60
    erb :play
  end

  post '/attacking' do
    redirect '/attack'
  end

  get '/attack' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
