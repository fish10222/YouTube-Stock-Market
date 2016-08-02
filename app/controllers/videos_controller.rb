class VideosController < ApplicationController
  include SessionsHelper
  include ApplicationHelper

  def index
    @videos = Video.all.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
  @user = current_user
  @video = Video.new(video_params)
  #@video.user_id = @user.id
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to videos_path
    else
      flash[:failure] = 'You don\'t have enough capital to purchase the video.'
      render :new
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @user = current_user
    @user.update_attribute(:capital, @user.capital + @video.price) 
    #Video.find(params[:id]).destroy
    @video.destroy
    flash[:success] = "Video deleted"
    redirect_to @user
  end

  def update
    @video = Video.find(params[:id])
    @user = current_user
    if @user.capital > @video.price
      @user.update_attribute(:capital, @user.capital- @video.price) 
      @video.update_attribute(:user_id, @user.id)
      #@video.buyers.create(@user)
      #@user.purchases.create(@video.uid)
      flash[:success] = 'Video Purchased!'
      redirect_to @user
    else
      flash[:failure] = 'You don\'t have enough capital to purchase the video.'
      redirect_to @user
    end
  end


  private
    def video_params
      params.require(:video).permit(:link)
    end

end
