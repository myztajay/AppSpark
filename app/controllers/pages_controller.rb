class PagesController < ApplicationController
  def index
  end

  def profile
    @user = current_user
    @skills = @user.skills
  end

  def show
  end
end
