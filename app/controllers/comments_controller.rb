class CommentsController < ApplicationController
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment deleted."
    redirect_to @comment.post
  end
end
