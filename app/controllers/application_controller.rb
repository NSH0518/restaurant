class ApplicationController < ActionController::Base
     
    #before_action :authenticate_user
     
    def authenticate_user
        if session[:user_id].present?
            
        else
            flash[:alert] = "Please sign in to continue."
            redirect_to login_path
        end
    end
    # helper_method :is_admin?
    def authenticate_admin
        if session[:admin_id].present?
            
        else
            flash[:alert] = "Only for admin"
            redirect_to admin_login_path
        end
    end
end
