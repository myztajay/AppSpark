class AppsController < ApplicationController
  def index
    @apps = App.all
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

    if @app.save
      redirect_to compare_path(@app)
    else
      render 'new'
    end
  end

  def edit
    @app = App.find(params[:id])
  end

  def update
    @app = App.find(params[:id])
   if @app.update(app_parameters)
     redirect_to @app
   else
     render 'edit'
   end
  end

  def delete
  end


  private
  def app_parameters
    params.require(:app).permit(:name, :description, :requirements, :developers_needed)
  end
end
