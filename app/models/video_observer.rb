class VideoObserver < ActiveRecord::Observer

  def before_save(resource)
    video = Yt::Video.new url: resource.link
    resource.uid = video.id
    resource.title = video.title
    resource.likes = video.like_count
    resource.dislikes = video.dislike_count
    resource.published_at = video.published_at
    resource.price = -5#video.view_count #since: 2.day.ago, until: 1.day.ago
  rescue Yt::Errors::NoItems
    resource.title = ''
  end
end
