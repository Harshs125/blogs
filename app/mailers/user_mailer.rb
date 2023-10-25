class UserMailer < ApplicationMailer
    # default from: 'harshsoni12501@gmail.com'
    
    def welcome_email
        @user = params[:user]
        @url = 'http://127.0.0.1:3000/users/new'
        mail(to: @user.email,subject: 'Welcome to Blog website ')
    end
end
