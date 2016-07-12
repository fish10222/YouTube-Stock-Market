class SessionsController < ApplicationController
  include SessionsHelper
  include ApplicationHelper

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

 def create
   if params[:normal_login] #added if statement for normal login. If normal login button is pressed, it will run this code instead of google login
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      log_in user
      if logged_in?
        flash[:success] = "Welcome, #{user.name}!"
      end
      redirect_to user
    else
      # Create an error message.
       flash.now[:error] = 'Invalid email/password combination'
      render 'login'
    end
   else
     user = User.from_omniauth(env["omniauth.auth"]) # I think this line causes an error when
     # logging in normally without Google login.
     log_in user
     if logged_in?
       flash[:success] = "Welcome, #{user.name}!"
     else
       flash[:warning] = "There was an error while trying to authenticate you..."
     end
     redirect_to root_path
   end
 end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
