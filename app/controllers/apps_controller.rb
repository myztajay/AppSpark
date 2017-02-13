class AppsController < ApplicationController
  def index
    if params[:tag]
      @apps = App.tagged_with(params[:tag])
    elsif params[:search]
      @apps = App.where('name LIKE ?', "%#{params[:search]}%")
    else
      @apps = App.all
    end
  end

  def show
    @app = App.find(params[:id])

    # if params[:link_title]
    #   @link=params[:link_title]
    # end
  end

  def new
    @app = App.new
  end

  def create
    @app = App.new(app_parameters)
    @app.user_id = current_user.id
    @app.save

    if @app.save
      redirect_to app_path(@app)
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

  def destroy
    @app = App.find(params[:id])
    @app.destroy
    redirect_to apps_path
  end


  private
  def app_parameters
    params.require(:app).permit(:name, :description, :requirements, :developers_needed, :tag_list,:image,:remove_image)
  end
end
