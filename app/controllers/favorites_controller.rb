class FavoritesController < ApplicationController
  
  # def create
  #   post = Post.find(params[:post_id])
  #   favorite = current_user.favorites.new(post_id: post.id)
  #   favorite.save
  #   redirect_to post_path(post)  
  # end
  
  # def destroy
  #   post = Post.find(params[:post_id])
  #   favorite = current_user.favorites.find_by(post_id: post.id)
  #   favorite.destroy
  #   redirect_to post_path(post)
  # end
  
  def create
    @favorite = Favorite.new(user_id: @current_user.id, post_id: params[:post_id])
    @favorite.save
    redirect_to post_path(post)
  end
  
  def destroy
    @favorite = Favorite.find_by(user_id: @current_user.id, post_id: params[:post_id])
    @post.destroy
    redirect_to post_path(post)
  end
  
end
