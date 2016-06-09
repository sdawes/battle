require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # $player_1_name = Player.new(params[:player_1_name])
    # $player_2_name  = Player.new(params[:player_2_name])
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    # @player_1_name = $player_1_name.name
    # @player_2_name = $player_2_name.name
    @game = $game
    # @player_2_hitpoints = player2.hitpoints
    erb :play
  end

  post '/attacking' do
    # Game.new.attack($player_2_name)
    @game = $game
    @game.attack(@game.player2)
    redirect '/attack'
  end

  get '/attack' do
    # @player_1_name = $player_1_name.name
    # @player_2_name = $player_2_name.name
    # @player_2_hitpoints = player2.hitpoints
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
