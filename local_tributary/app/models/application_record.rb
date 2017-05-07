class ApplicationRecord < ActiveRecord::Base
  protect_from_forgery with: :exception
  self.abstract_class = true

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  def authenticate_user!
    redirect_to '/products' unless current_user
  end

  def authenticate_admin!
    redirect_to '/products' unless current_user.admin 
  end

end
