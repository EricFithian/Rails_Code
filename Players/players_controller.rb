class PlayersController < ApplicationController
  def index
    @players = Player.all
    render 'index.json.jbuilder'
  end

  def show
    @player = Player.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @player = Player.new(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      average: params[:average],
      salary: params[:salary],
      position: params[:position]        
    )
    @player.save
    render 'show.json.jbuilder'
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      average: params[:average],
      salary: params[:salary],
      position: params[:position]   
    )
    render 'show.json.jbuilder'
  end

  def destroy
    player.destroy = Player.find_by(id: params[:id])
    redirect_to "/players"
  end
end

