class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author, :body
  
  has_many :tags, dependent: :destroy
  
  accepts_nested_attributes_for :tags, reject_if: ->(p) { p['name'].empty? }
  attr_accessible :tags_attributes
end
