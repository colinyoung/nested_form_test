class AddCommentIdToTag < ActiveRecord::Migration
  def change
    add_column :tags, :comment_id, :integer
  end
end
