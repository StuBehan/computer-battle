require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player1], params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @player1hp = $game.player1.health
    @player2hp = $game.player2.health
    @active_player = $game.active_player.name
    erb :play
  end

  get '/attack' do
    @active_player = $game.active_player.name
    @inactive_player = $game.inactive_player.name
    $game.attack($game.inactive_player)
    @gameover = $game.gameover
    erb :attack
  end

  run! if app_file == $0
end
