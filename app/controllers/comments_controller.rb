class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    p "X"*100
    p params[:comment]
    @comment = @post.comments.create(params[:comment])
    redirect_to @post
  end

  def new
    @post = Post.find(params[:post_id])
  end


  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_path
  end

end
