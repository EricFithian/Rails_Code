class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def all_categories
    Category.all
  end
  helper_method :all_categories

  def current_user
    @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin!
    redirect_to '/products' unless current_user && current_user.admin
  end

  def current_company
    @current_company ||= Company.find_by(id: session[:company_id]) if session[:company_id]
  end
  helper_method :current_company

  def authenticate_user!
    redirect_to '/login' unless current_user
  end
  helper_method :authenticate_company

  def authenticate_company_admin!
    redirect_to '/products' unless current_company && current_company.admin
  end

  def get_cart_count
    current_user.carted_products.where(status: 'carted').length
  end
  helper_method :get_cart_count
end
