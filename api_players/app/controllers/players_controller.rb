class PlayersController < ApplicationController
  def index
    players_array = Unirest.get("#{ENV['API_Route']}/players", 
      headers:{ "Accept" => "application/json",
                          "X-User-Email" => "funemail",
                          "Authorization" => "Token token=funapi"
                         },
      ).body
    @players = Player.new(players_array)    
    render 'index.html.erb'
  end

  def new
  end

  def create 
    player = Unirest.post("#{ENV['API_Route']}/players",
                        headers:{ "Accept" => "application/json",
                          "X-User-Email" => "funemail",
                          "Authorization" => "Token token=funapi"
                         }, 
                        parameters:{:first_name => params[:input_first_name], 
                          :last_name => params[:input_last_name],
                          :average => params[:input_average]
                        }).body


    redirect_to "/players/#{player['id']}"
  end

  def show
    @player = Player.find(params[:id])
    render 'show.html.erb'
  end

  def edit
    #@player = Player.find(params[:id])
    @player = Unirest.get("#{ENV['API_Route']}/players/#{params[:id]}").body
  end

  def update
    @player = Unirest.patch("#{ENV['API_Route']}/players/#{params[:id]}").body

  end

  def destroy
    Unirest.delete("#{ENV['API_Route']}/players/#{params[:id]}").body
    redirect_to "/players"
  end
end
