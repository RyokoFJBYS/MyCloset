class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to users_path
  end

  def unsubscribe
    @user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :status)
  end

end
