class Tag < ActiveRecord::Base
  belongs_to :comment
  attr_accessible :name
end
