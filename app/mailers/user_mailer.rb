class UserMailer < ApplicationMailer
    # default from: 'harshsoni12501@gmail.com'
    
    def welcome_email
        @user = params[:user]
        @activation_token = @user.activation_token
        @activation_url = edit_activation_url(@activation_token,host: 'localhost:3000')        
        mail(to: @user.email,subject: 'Welcome to Blog website ')
    end
end
