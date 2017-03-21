class ProductsController < ApplicationController
  def index
    if session[:count] == nil
      session[:count] = 1
    else
      session[:count] += 1
    end

    @products = Products.all

    render 'index.html.erb'
  end
end
