class ApplicationController < ActionController::Base
   protect_from_forgery
   before_filter { |c| Authorization.current_user = c.current_user }
   before_filter :require_user
   filter_resource_access
   helper_method :current_user_session, :current_user

    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end
    
    def require_user
      unless current_user
        store_location
        flash[:notice] = "Debes estar logueado para ingresar a esta pagina"
        redirect_to login_path
        return false
      end
    end

    def require_no_user
      if current_user
        store_location
        flash[:notice] = "Debes estar logueado para ingresar a esta pagina"
        redirect_to hours_path
        return false
      end
    end

    def store_location
      session[:return_to] = request.fullpath
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end

end
