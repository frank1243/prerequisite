class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user
  
  has_many :comments, :dependent => :destroy

  validates_uniqueness_of :title  #repetition not allowed

  validates_presence_of :title, :content, :user

end
