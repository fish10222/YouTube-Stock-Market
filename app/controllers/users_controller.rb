class UsersController < ApplicationController
  include SessionsHelper
  include ApplicationHelper
  before_action :admin_user,     only: [ :index, :destroy]

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
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:danger] = "Creating account failed"
      redirect_to signup_path
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def login
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
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end


    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
