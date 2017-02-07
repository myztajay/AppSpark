class AppsController < ApplicationController
  def index

  end

  def show
    @app = App.find(params[:id])
  end

  def new
    @app = App.new
  end

  def create
    @app = App.new(app_parameters)
    @app.user_id = current_user.id
    @app.save
  end

  def edit
  end

  def update
  end

  def delete
  end


  private
  def app_parameters
    params.require(:app).permit(:name, :description, :requirements, :developers_needed)
  end
end
