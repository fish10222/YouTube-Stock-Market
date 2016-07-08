class VideosController < ApplicationController

  def index
    @videos = Video.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
  @video = Video.new(video_params)
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

  private
    def video_params
      params.require(:video).permit(:link)
    end

end
