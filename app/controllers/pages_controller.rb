class PagesController < ApplicationController
  def index
    @apps = App.first(6)
    @pop_apps = App.first(3)
  end
end
