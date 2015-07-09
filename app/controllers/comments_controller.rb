class CommentsController < ApplicationController

 def create
  @comment = current_user.comments.create params[:comment]
   flash[:alert] = "You added a comment!"
   redirect_to post_path(@comment.post)
  end
end

