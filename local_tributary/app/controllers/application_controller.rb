class ApplicationController < ActionController::Base

  def all_categories
    Category.all
  end
  helper_method :all_categories

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin!
    redirect_to '/products' unless current_user && current_user.admin
  end

  def get_cart_count
    current_user.carted_products.where(status: 'carted').length
  end
  helper_method :get_cart_count

end
