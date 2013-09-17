class Comment < ActiveRecord::Base
  belongs_to :post

  belongs_to :author, class_name: "User"

  validates :text, presence: true

  attr_accessible :text, :post_id, :author_id
end

