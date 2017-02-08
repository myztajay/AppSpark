class CommitmentsController < ApplicationController
  def create

    @commitment = Commitment.new(commitment_parameters)
    @commitment.user = current_user
    @commitment.save
  end

  def destroy
  end

  private

  def commitment_parameters
    params.require(:commitment).permit(:app_id)
  end
end
