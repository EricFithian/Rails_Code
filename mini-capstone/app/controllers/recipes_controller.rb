class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @recipe = Recipe.create(
      title: params[:title],
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      price: params[:price]
    )
    redirect_to "/recipes/#{@recipe.id}"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = recipe.destroy
  end
end
