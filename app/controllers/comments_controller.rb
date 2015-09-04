class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    #think about where it really goes
    redirect_to @post
  end

  private

  def comment_params
  	params.require(:comment).permit(:body)
  end

end