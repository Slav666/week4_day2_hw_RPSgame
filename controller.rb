require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rps_game')

also_reload('./models/*')


get '/game/:hand1/:hand2' do
@result = RPSGame.check_win(params[:hand1], params[:hand2])
erb (:result)
end


   get '/rules' do
    erb (:rules)
  end
