class UsersController < ApplicationController
  def index
  end

  def show 
    @user=User.find(params[:id])
  end

  def new 
    @user=User.new()
  end

  def create
    password=user_params[:password]
    confirm_password=user_params[:confirm_password]
    if password == confirm_password 
      params_except_confimpassword=user_params.except(:confirm_password)
      puts params_except_confimpassword
      @user=User.new(params_except_confimpassword)
      if @user.save()
        UserMailer.with(user: @user).welcome_email.deliver_now
        
        redirect_to @user
      else
        flash.now[:error] = "Password and confirmation do not match."
        render :new, status: :unprocessable_entity
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email , :password, :confirm_password)
  end
end

