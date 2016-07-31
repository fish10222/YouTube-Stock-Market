module VideosHelper

  def purchase
    #@video = Video.find(params[:id])
    #@user = current_user
    if @user.capital > @video.price
      @user.capital = @user.capital - @video.price
      @video.buyers.create(@user)
      @user.purchases.create(@video.uid)
      flash[:success] = 'Video Purchased!'
    else
      flash[:failure] = 'You don\'t have enough capital to purchase the video.'
    end
  end

end
