class PostsController < ApplicationController

  def index
    @posts = Posts.order(id: :desc)
  end

  def new
    unless current_user
      flash[:alert] = "Please log into post"
      redirect_to posts_path
    else
      @post = Post.new
    end
  end

  def create
    @user = current_user
    @post = current_user.create params[:post]
    flash[:alert] = "You made a new post!"
    #redirect_to "feed"
    #render: "name of the view" (this would re-render.  Can use a string or symbol)
  end
end


