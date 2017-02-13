class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_profile_params)
    redirect_to @user
  end


  private
  def user_profile_params
    params.require(:user).permit(:image,:remove_image)
  end
end
