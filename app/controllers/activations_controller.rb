class ActivationsController < ApplicationController

    def edit
        user=User.find_by(activation_token: params[:id])
        if user && !user.activated?
            user.activated=true
            user.activated_at=Time.now
            user.save()
            flash[:success] = "Account activated!"
            redirect_to 
        else
            flash[:danger] = "Invalid activation link"
            redirect_to root_url
        end
    end
end

