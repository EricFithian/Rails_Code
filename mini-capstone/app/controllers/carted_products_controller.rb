class CartedProductsController < ApplicationController
  def index
    @recipes = Recipe.all 
    render 'index.html.erb'
  end

  def create
    @recipes = Recipe.find_by(id: params['recipe_id'])

    @carted_products = CartedProduct.create(
        quantity: params['quantity'],
        user_id: current_user.id,
        recipe_id: params[:recipe_id],
        order_id: "carted"
      )
    flash[:sucess] = "You just successfully ordered!"
    redirect_to "/carted_products"
  end
end

