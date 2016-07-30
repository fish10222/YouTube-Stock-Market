class Video < ActiveRecord::Base
  belongs_to :user
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  validates :link, presence: true, format: YT_LINK_FORMAT
  validates :points, greater_than_or_equal_to: => 0

end
