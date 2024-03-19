class PostsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:game_mode_id, :content).merge(user_id: current_user.id)
  end
end
