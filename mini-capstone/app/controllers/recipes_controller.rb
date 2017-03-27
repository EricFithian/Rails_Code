class RecipesController < ApplicationController
  def index
    if current_user
      @recipes = Recipe.all
      # if params[:category]
      #   @recipes = Category.find_by(name: params[:category]).recipes
      # end
      render 'index.html.erb'
    else
      redirect_to '/login'
    end
  end

  def new
    render 'new.html.erb'
  end

  def create
    if current_user
      @recipe = Recipe.create(
        user_id: params[:user_id],
        title: params[:title],
        chef: params[:chef],
        ingredients: params[:ingredients],
        directions: params[:directions],
        prep_time: params[:prep_time],
        price: params[:price]
      )
      Rails.logger.info(@recipe.errors.inspect) 
      flash[:sucess] = "You just created a recipe!"
      redirect_to "/recipes/#{@recipe.id}"
    else
      redirect_to '/login'
    end
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
    redirect_to "/recipes/#{@recipe.id}"
  end
end
