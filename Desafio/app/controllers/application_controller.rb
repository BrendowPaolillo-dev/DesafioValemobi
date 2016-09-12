class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :error, :success


    def current_user
	    @current_user ||= if session[:vendedor_id]
	      Vendedor.find_by_id(session[:vendedor_id])
    	end
  	end
  helper_method :current_user

end
