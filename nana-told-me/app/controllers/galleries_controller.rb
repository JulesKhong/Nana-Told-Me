class StoriesController < ApplicationController

  def index
    @images = Gallery.all
  end

end
