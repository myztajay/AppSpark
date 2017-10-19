class PagesController < ApplicationController
  def index
    @apps = App.last(6)
  end
end
