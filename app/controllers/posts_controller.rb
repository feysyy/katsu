class PostsController < ApplicationController
  def create
    post = current_user.posts.create(post_params)
    if post.save
      if post_params[:content_type] === "anime"
        redirect_to show_anime_path(post_params[:content_id])
      else
        redirect_to show_manga_path(post_params[:content_id])
      end
    else
      if post_params[:content_type] === "anime"
        redirect_to show_anime_path(post_params[:content_id]), alert: "Failed"
      else
        redirect_to show_manga_path(post_params[:content_id]), notice: "Failed"
      end
    end
  end

  

  private

  def post_params
    params.require(:post).permit(:body, :content_id, :content_type)
  end
end