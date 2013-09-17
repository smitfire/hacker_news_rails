class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :password_confirmation, :password
  has_many :posts

  has_many :comments_received, through: :posts, source: :comments
  
  has_many :comments_written, class_name: "Comment"

  validates :email, presence: true

  has_secure_password

end
