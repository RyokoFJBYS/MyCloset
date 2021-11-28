class UsersController < ApplicationController

  def show
     @user = User.find(params[:id])
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

  private
  def user_params
    params.require(:user).permit(:name, :email, :status)
  end

end
