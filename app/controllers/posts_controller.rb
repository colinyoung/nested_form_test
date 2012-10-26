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
      flash[:notice] = "Post created."
      redirect_to :posts
    else
      flash[:error] = @post.errors
      render :new
    end
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(params[:post])
      redirect_to :posts
      flash[:notice] = "Post updated."
    else
      flash[:error] = @post.errors
      render :edit
    end
  end
  
  def destroy
    Post.find(params[:id]).destroy
    flash[:notice] = "Post deleted."
    redirect_to :posts
  end
end
