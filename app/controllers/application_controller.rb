class ApplicationController < ActionController::Base
    def require_activation
        unless current_user && current_user.activated?
          flash[:warning] = "Please activate your account."
          redirect_to root_url
        end
    end
end
