class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :user, :post_id

  validates_presence_of :post, :body, :user
end
