class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      flash[:notice] = "Your story has been added successfully!"
      redirect_to root_path
    else
      flash[:alert] = "Error creating new story!"
      render :new
    end
  end

  private
  def story_params
    params.require(:story).permit(:title, :details, :location, :date, :image, :contributor)
  end

end
