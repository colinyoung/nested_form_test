class Post < ActiveRecord::Base
  attr_accessible :body, :title
  
  validates :title, presence: true
  validates :body, length: { minimum: 10 }
end
