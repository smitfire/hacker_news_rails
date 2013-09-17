class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  attr_accessible :title, :url, :post_id, :user_id
end
