class UsersController < ApplicationController

  def show
     @user = User.find(params[:id])
     @posts = Post.all
  end

  def favorites
    @user = User.find_by(id: params[:id])
    @favorites = Favorite.where(user_id: @user.id)
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
