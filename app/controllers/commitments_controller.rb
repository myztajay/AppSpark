class CommitmentsController < ApplicationController
  def create
    respond_to do |format|
      @commitment = Commitment.new(commitment_parameters)
      @commitment.user = current_user
      @commiter = @commitment.user.email
      if @commitment.save
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

  def commitment_parameters
    params.require(:commitment).permit(:app_id)
  end
end
