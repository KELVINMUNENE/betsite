require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
also_reload('lib/**/*.rb')

	get("/") do

		erb(:index)
	end

	get("/new_game") do
		erb(:new_game)
	end


  post("/games") do

    name = params.fetch("name")
    choice = params.fetch("choice")
    amount = params.fetch("amount")
    player2 = params.fetch("player2")
    player_image = params.fetch("player_image")
    @game = Game.new({:name => name, :amount => amount, :choice => choice, :player2 => player2, :player_image => player_image })
    if @game.save()
      erb(:success)
    else
      erb(:error)
    end
  end

get("/available") do
  @all_games = Game.all()
  erb(:available)
end

get '/available/:id' do
  @game = Game.find(params.fetch("id").to_i())
  @balance = 2000 
  erb(:game)
end

post '/available' do
@amount = params.fetch("amount").to_i()
@amount = @amount - 50
@selection = params.fetch("choice")
game = params.fetch("game")
erb(:success)
end


get '/about' do
  erb(:about)
end

    
	
   



   