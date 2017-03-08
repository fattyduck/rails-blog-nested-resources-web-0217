class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    post = comment.post
    if comment.valid?
      comment.save
      redirect_to post_path(post)
    else
      redirect_to posts_path
    end
  end

  def comment_params
    params.require(:comment).permit(:content,:post_id)
  end
end
