class PagesController < ApplicationController
  def index
  end

  def profile
    @user = current_user
    @skills = @user.skills
    @userskill = Userskill.new
  end

  def show
  end
end
