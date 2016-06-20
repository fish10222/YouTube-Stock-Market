class SessionsController < ApplicationController
  include SessionsHelper
def index
  @user = User.all
end

def show
  @user = User.find(params[:id])
end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end


  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to @user
    else
      # Create an error message.
       flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:email, :password))
      redirect_to @student
    else
      render 'edit'
    end
  end



  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
