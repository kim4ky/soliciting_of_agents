class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :destroy

  def create
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy if current_user == @comment.user
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
