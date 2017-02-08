class UserskillsController < ApplicationController


  def create
    respond_to do |format|
      @userskill = Userskill.new(userskill_parameters)
      @userskill.user = current_user
      @skills = current_user.skills
      @skill = @userskill.skill.skill
      if @userskill.save
        # flash...
        format.html {}
        format.js {}
      else
        flash[:error]="you fucked up"
        format.html {}
        format.js {}
      end
    end


  end

  def destroy
  end

  private

  def userskill_parameters
    params.require(:userskill).permit(:skill_id)
  end

end
