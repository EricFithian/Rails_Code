class OrdersController < ApplicationController
  def create

    redirect_to '/orders/#{@.id}'
    # render 'create.html.erb'
  end
end
