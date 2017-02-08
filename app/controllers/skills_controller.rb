class SkillsController < ApplicationController
  def create
  end

  def destroy
  end

  private

  def skill_parameters
    params.require(:skill).permit(:skill)
  end
end
