class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipe_title = @recipes.title
    @chef = @recipes.chef
    @ingredients = @recipes.ingredients
    @directions = @recipes.directions
    @prep_time = @recipes.prep_time
    @price = @recipes.price
    render 'index.html.erb'
  end

  def new

  end

  def create
    redirect_to '/recipes'
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
