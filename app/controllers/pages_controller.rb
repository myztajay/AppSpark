class PagesController < ApplicationController
  def index
    @apps = App.last(9)
  end
end
