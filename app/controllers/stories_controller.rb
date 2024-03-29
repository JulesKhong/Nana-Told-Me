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

  def show
    @story = Story.find(params[:id])
  end

  def edit
    @story = Story.find(params[:id])
    render :edit
  end

  def update
    @story= Story.find(params[:id])
    if @story.update(story_params)
      redirect_to stories_path
    else
      render :edit
    end
  end

def destroy
  @story = Story.find(params[:id])
  @story.destroy
  redirect_to root_path
end

  private
  def story_params
    params.require(:story).permit(:title, :details, :location, :date, :image, :contributor)
  end

end
