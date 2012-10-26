class PostsController < ApplicationController
  
  # Views
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  # Mutators
  def create
    @post = Post.create(params[:post])
    if @post.persisted?
      redirect_to :posts
    else
      flash[:error] = @post.errors
      render :new
    end
  end
  
  def destroy
    Post.find(params[:id]).destroy
    flash[:notice] = "Post deleted."
    redirect_to :posts
  end
end
