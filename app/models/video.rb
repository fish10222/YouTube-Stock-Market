class Video < ActiveRecord::Base
  belongs_to :user
  YT_LINK_FORMAT = /A.*(youtube.com\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  validates :link, presence: true, format: YT_LINK_FORMAT

end
