class SessionsController < ApplicationController
  include SessionsHelper
  include ApplicationHelper

  def index
  end

  def new
  end

=begin
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
    else
      # Create an error message.
       flash.now[:error] = 'Invalid email/password combination'
      render 'login'
    end
  end

  user = User.from_omniauth(env["omniauth.auth"])
=end

 def create
   user = User.from_omniauth(env["omniauth.auth"])
   log_in user
   redirect_to root_path
 end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
