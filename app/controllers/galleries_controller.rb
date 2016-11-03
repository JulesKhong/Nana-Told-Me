class GalleriesController < ApplicationController

  def index
    @nanastories = Gallery.all
  end

end
