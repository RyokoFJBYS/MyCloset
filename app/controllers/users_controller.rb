class UsersController < ApplicationController

  def show
     @user = User.find(params[:id])
     @posts = current_user.posts
     @myposts = current_user.posts.order(created_at: :desc)
  end

  def favorites
    @user = User.find_by(id: params[:id])
    @favorites = Favorite.page(params[:page]).where(user_id: @user.id).reverse_order.per(9)
  end

  def myposts
    @posts = current_user.posts.page(params[:page]).reverse_order.per(9)
    @tags = current_user.posts.tag_counts_on(:tags).most_used(20)
  
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def unsubscribe
    @user = current_user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :status)
  end

end
