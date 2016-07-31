class Video < ActiveRecord::Base
  belongs_to :user
  has_many :buyers, :class_name => 'User', :foreign_key => 'user_id'
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  validates :link, presence: true, format: YT_LINK_FORMAT
  validates :link, uniqueness: true
end
