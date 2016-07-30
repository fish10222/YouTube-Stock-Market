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
  @video.user_id = @user.id
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to videos_path
    else
      render :new
    end
  end

  def destroy
    Video.find(params[:id]).destroy
    flash[:success] = "Video deleted"
    redirect_to videos_path
  end

def purchase
  @video = Video.find(params[:id])
  @user = current_user
  @user.capital = @user.capital - @video.price
  @video.buyers.create(@user)
  @user.purchases.create(@video.uid)
  flash[:success] = 'Video Purchased!'
end

  private
    def video_params
      params.require(:video).permit(:link)
    end

end
