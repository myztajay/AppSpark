class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:github_data]
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_profile_params)
    redirect_to @user
  end

  def github_data
    x = {github_name: githubname = data["info"]["nickname"]}
    current_user.update(x)
    puts data
    redirect_to 'apps_path'
  end

  private
  def user_profile_params
    params.require(:user).permit(:image,:remove_image)
  end

  def data
    request.env['omniauth.auth']
  end
end
