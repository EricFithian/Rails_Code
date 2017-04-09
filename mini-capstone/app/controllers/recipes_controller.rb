class RecipesController < ApplicationController

  def index
      @recipes = Recipe.all
  end

  def new
  end

  def create
    @recipe = Recipe.create(
      user_id: current_user,
      title: params[:title],
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      price: params[:price]
    )
    if recipe.save
      Rails.logger.info(@recipe.errors.inspect) 
      flash[:sucess] = "You just created a recipe!"
      redirect_to "/recipes/#{@recipe.id}"
    else
      render 'edit.html.erb'
    end
  end

  def show
    @recipe = Recipe.find_by!(id: params[:id])
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = recipe.destroy
    redirect_to "/recipes/#{@recipe.id}"
  end
end
