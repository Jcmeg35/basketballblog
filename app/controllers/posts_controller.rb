class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    unless current_user
      flash[:alert] = "Please log in to post"
      redirect_to posts_path
    else
      @post = Post.new
    end
  end

  def create
    @user = current_user
    @post = current_user.posts.create params[:post]
    flash[:alert] = "You made a new post!"
    redirect_to posts_path
    # redirect to "feed"
    #render: "name of the view" (this would re-render.  Can use a string or symbol)
  end
end


  