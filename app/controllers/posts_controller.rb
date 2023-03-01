class PostsController < ApplicationController
  def create
    post = current_user.posts.create(post_params)
    if post.save
      redirect_to show_anime_path(post_params[:anime_id]), notice: "success"
    else
      redirect_to show_anime_path(post_params[:anime_id]), alert: "Failed"
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :anime_id)
  end
end