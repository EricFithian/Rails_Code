class ImagesController < ApplicationController
  def new
    @company = Company.find_by(id: params[:company_id])
    render 'new.html.erb'
  end

  def create
    @image = Image.create(
      url: params[:url],
      product_id: params[:company_id]
      )
    redirect_to "/company/#{params[:company_id]}"
  end
end
