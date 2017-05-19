class ImagesController < ApplicationController
  def new
    @product = Product.find_by(id: params[:product_id])
    render 'new.html.erb'
  end

  def create
    @image = Image.create(
      url: params[:url],
      product_id: params[:product_id]
      )
    redirect_to "/products/#{params[:product_id]}"
  end
end
