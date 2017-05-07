class CartedProductsController < ApplicationController
  before: authenticate_user! && authenticate_admin!

  def index
    @recipes = Product.all 
  end

  def create
    @recipes = Product.find_by(id: params['product_id'])

    @carted_products = CartedProduct.create(
        quantity: params['quantity'],
        user_id: current_user.id,
        recipe_id: params[:product_id],
        order_id: "carted"
      )
    flash[:sucess] = "You just successfully ordered!"
    redirect_to "/products"
  end
end