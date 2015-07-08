class CommentsController < ApplicationController

 def index
    @comments = Comments.all
  end

  def new
    unless current_user
      flash[:alert] = "Please log in to see posts"
      redirect_to posts_path
    else
      @post = Post.new
    end
  end

  def create
    @post = current_user.comments.create params[:comment]
    flash[:alert] = "You made a new post!"
    render: "posts/show.html.erb"
  end
end

