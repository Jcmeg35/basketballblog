class PostsController < ApplicationController

  def index
    @posts = Posts.all
  end

  def new
    @post = Post.new
  end

  def create
    @user = current_user
    @post = Post.create params[:post]
    flash[:alert] = "You made a new post!"
    #redirect_to "feed"
    #render: "name of the view" (this would re-render.  Can use a string or symbol)
  end
end
