class Post < ActiveRecord::Base
  attr_accessible :body, :title
  
  validates :title, presence: true
  validates :body, length: { minimum: 5 }
  
  has_many :comments, dependent: :destroy
  
  accepts_nested_attributes_for :comments, reject_if: ->(p){ p['body'].empty? }
  attr_accessible :comments_attributes
end
