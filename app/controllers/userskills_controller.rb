class UserskillsController < ApplicationController


  def create
    byebug
    @userskill.params[:user_id] = current_user.id
    @userskill.save
    if @userskill.save
      redirect_to pages_profile
    end
  end

  def destroy
  end

end
